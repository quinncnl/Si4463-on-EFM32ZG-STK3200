#include "em_device.h"
#include "em_chip.h"
#include "em_gpio.h"
#include "em_cmu.h"
#include "em_timer.h"

#define TOP 21

void TIMER0_IRQHandler(void)
{
  TIMER_IntClear(TIMER0, TIMER_IF_OF);
  GPIO_PinOutClear(gpioPortC, 10);
}

int main(void)
{
	TIMER_Init_TypeDef timerInit =
		{
		  .enable     = true,
		  .debugRun   = true,
		  .prescale   = timerPrescale1,
		  .clkSel     = timerClkSelHFPerClk,
		  .fallAction = timerInputActionNone,
		  .riseAction = timerInputActionNone,
		  .mode       = timerModeUp,
		  .dmaClrAct  = false,
		  .quadModeX4 = false,
		  .oneShot    = false,
		  .sync       = false,
		};

  CHIP_Init();

  CMU_ClockEnable(cmuClock_GPIO, true);
  GPIO_PinModeSet(gpioPortC,10,gpioModePushPull,0);
  GPIO_PinOutSet (gpioPortC,10);

  CMU_OscillatorEnable(cmuOsc_HFRCO , true, true);
  CMU_HFRCOBandSet (cmuHFRCOBand_21MHz );
  CMU_OscillatorTuningSet(cmuOsc_HFRCO,21);

  CMU_ClockEnable(cmuClock_HF , true);
  CMU_ClockEnable(cmuClock_HFPER , true);
  CMU_ClockEnable(cmuClock_TIMER0, true);

  CMU_ClockDivSet(cmuClock_HFPER, cmuClkDiv_1);
  CMU_ClockSelectSet(cmuClock_HF,cmuSelect_HFRCO);

  TIMER_Init(TIMER0, &timerInit);
  uint32_t 	test0;
  test0= CMU_ClockFreqGet (cmuClock_TIMER0 ); //14MHz

  TIMER_TopSet(TIMER0, TOP);
  TIMER_IntEnable(TIMER0, TIMER_IF_OF);
  NVIC_EnableIRQ(TIMER0_IRQn);



  /* Infinite loop */
  while (1) {
  }
}
