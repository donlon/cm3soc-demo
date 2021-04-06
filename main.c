#include <cm3soc/cm3soc.h>

#include <xparameters.h>
#include <xgpio.h>

int value = 1;

XGpio gpio;   /* The driver instance for GPIO Device 0 */

int systick_init() {
    // https://developer.arm.com/documentation/ka002893/latest
    SysTick->CTRL = 0;
    SysTick->VAL = 0; /* Load the SysTick Counter Value */
    SysTick->CTRL = (SysTick_CTRL_TICKINT_Msk   |  /* Enable SysTick exception */
                     SysTick_CTRL_ENABLE_Msk) |    /* Enable SysTick system timer */
                    SysTick_CTRL_CLKSOURCE_Msk;   /* Use processor clock source */
    return SysTick_Config(50e6 / 4); // 4 Hz
}

int system_init() {
    int status;
    status = systick_init();
    if (status != XST_SUCCESS) {
        return status;
    }
    // xil_printf("Hello, World!\n");

    /*
     * Initialize the GPIO driver so that it's ready to use,
     * specify the device ID that is generated in xparameters.h
    */
    status = XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return status;
    }
    XGpio_SetDataDirection(&gpio, 1, 0);
    XGpio_DiscreteWrite(&gpio, 1, 0x2);

    // NVIC_EnableIRQ(SysTick_IRQn);
    return status;
}

int main() {
    system_init();
    while (1) { // NOLINT
    }
    return 0;
}

void SysTick_Handler() {
    if (value & 1) {
        XGpio_DiscreteWrite(&gpio, 1, 0b01);
    } else {
        XGpio_DiscreteWrite(&gpio, 1, 0b10);
    }
    value++;
}
