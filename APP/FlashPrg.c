#include "FlashOS.h"
#include "SWM330.h"
#include "W25N01G.h"


/****************************************************************************************************************************************** 
* 函数名称: Init()
* 功能说明:	Initialize Flash Programming Functions
* 输    入: unsigned long adr	Device Base Address
*			unsigned long clk	Clock Frequency (Hz)
*			unsigned long fnc	Function Code (1 - Erase, 2 - Program, 3 - Verify)
* 输    出: int					0 - OK,  1 - Failed
* 注意事项: 无
******************************************************************************************************************************************/
int Init(unsigned long adr, unsigned long clk, unsigned long fnc)
{
	QSPI_InitStructure QSPI_initStruct;
	
	if(fnc == 1)
	{
		__disable_irq();
		
		/* 当系统时钟为 PLL 时，复位 ANALOG CONTROL，将导致系统时钟消失，芯片卡死 */
		switchTo8MHz();
		
		SYS->PRSTEN = 0x55;
		SYS->PRSTR0 = 0xFFFFFFFF;
		SYS->PRSTR1 = 0xFFFFFFFF;
		__DSB();__ISB();__NOP();__NOP();
		SYS->PRSTR0 = 0;
		SYS->PRSTR1 = 0;
		SYS->PRSTEN = 0;
		
		SystemInit();
		
		W25N01G_Init();
		
		W25N01G_FlashProtect(W25N_PROTECT_None);
	}
	else if(fnc == 2)
	{
	}
	else if(fnc == 3)
	{
	}

	return 0;
}


/****************************************************************************************************************************************** 
* 函数名称: UnInit()
* 功能说明:	De-Initialize Flash Programming Functions
* 输    入: unsigned long fnc	Function Code (1 - Erase, 2 - Program, 3 - Verify)
* 输    出: int					0 - OK,  1 - Failed
* 注意事项: 无
******************************************************************************************************************************************/
int UnInit(unsigned long fnc)
{
  	return 0;
}


/****************************************************************************************************************************************** 
* 函数名称: EraseSector()
* 功能说明:	Erase Sector in Flash Memory
* 输    入: unsigned long adr	Sector Address
* 输    出: int					0 - OK,  1 - Failed
* 注意事项: 无
******************************************************************************************************************************************/
int EraseSector(unsigned long adr)
{
	if((adr < 0x70000000) || (adr > 0x78000000))
		return 1;
	
	adr = adr - 0x70000000;
	
 	W25N01G_Erase(adr / W25N_PAGE_SIZE, 1);
	
 	return 0;
}


/****************************************************************************************************************************************** 
* 函数名称: ProgramPage()
* 功能说明:	Program Page in Flash Memory
* 输    入: unsigned long adr	Page Start Address
*			unsigned long sz	Page Size
*			unsigned char *buf	Page Data
* 输    出: int					0 - OK,  1 - Failed
* 注意事项: 无
******************************************************************************************************************************************/
int ProgramPage(unsigned long adr, unsigned long sz, unsigned char *buf)
{
	if((adr < 0x70000000) || (adr > 0x78000000))
		return 1;
	
	adr = adr - 0x70000000;
	
	for(int i = sz; i < W25N_PAGE_SIZE; i++)
	{
		buf[i] = 0xFF;
	}
	
	W25N01G_Write_4bit(adr / W25N_PAGE_SIZE, buf);
	
  	return 0;
}


/****************************************************************************************************************************************** 
* 函数名称: Verify()
* 功能说明:	Verify Flash Contents
* 输    入: unsigned long adr	Block Start Address
*			unsigned long sz	Block Size (in bytes)
*			unsigned char *buf	Block Data
* 输    出: int					(adr+sz) - OK,  other - Failed Address
* 注意事项: 无
******************************************************************************************************************************************/
unsigned long Verify(unsigned long adr, unsigned long sz, unsigned char *buf)
{
	if((adr < 0x70000000) || (adr > 0x78000000))
		return adr;
	
	adr = adr - 0x70000000;
	
	uint8_t * rdbuf = (uint8_t *)0x20010000;
	
	W25N01G_Read_4bit(adr / W25N_PAGE_SIZE, rdbuf);
	
	for(int i = 0; i < sz; i++)
		if(rdbuf[i] != buf[i])
			return (0x70000000+adr+i);
	
	return (0x70000000+adr+sz);
}


unsigned long Read(unsigned long adr, unsigned long sz, unsigned char *buf)
{
	if((adr < 0x70000000) || (adr > 0x78000000))
		return adr;
	
	adr = adr - 0x70000000;
	
	W25N01G_Read_4bit(adr / W25N_PAGE_SIZE, buf);
	
	return (0x70000000+adr+sz);
}
