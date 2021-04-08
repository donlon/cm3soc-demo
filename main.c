#include <stdio.h>

#include <cm3soc/cm3soc.h>

#include <xparameters.h>
#include <xgpio.h>
#include <xuartlite.h>

int value = 1;

XGpio gpio;   /* The driver instance for GPIO Device 0 */
XUartLite uart_inst;         /* Instance of the UartLite device */

int systick_init() {
    return SysTick_Config(50e6 / 4); // 4 Hz
}

int gpio_init() {
    int status = XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_DEVICE_ID); // initialize GPIO
    if (status != XST_SUCCESS) {
        return status;
    }
    XGpio_SetDataDirection(&gpio, 1, 0); // set GPIO direction
    XGpio_DiscreteWrite(&gpio, 1, 0x2); // set GPIO output

    return status;
}

int uart_init() {
    /*
     * Initialize the UartLite driver so that it's ready to use.
     */
    int status = XUartLite_Initialize(&uart_inst, XPAR_UARTLITE_0_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    /*
     * Perform a self-test to ensure that the hardware was built correctly.
     */
    status = XUartLite_SelfTest(&uart_inst);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    return status;
}

int system_init() {
    int status;
    status = uart_init();
    if (status != XST_SUCCESS) {
        return status;
    }
    status = systick_init();
    if (status != XST_SUCCESS) {
        return status;
    }
    status = gpio_init();
    if (status != XST_SUCCESS) {
        return status;
    }
    // xil_printf("Hello, World!\n");
    return status;
}

int main() {
    int status = system_init();
    if (status != XST_SUCCESS) {
        while (1) {
        }
    }

    return 0;
}

void SysTick_Handler() {
    if (value & 1) {
        XGpio_DiscreteWrite(&gpio, 1, 0b01);
    } else {
        XGpio_DiscreteWrite(&gpio, 1, 0b10);
    }
    if (value % 4 == 0) {
        char str_buffer[64];
        int len = snprintf(str_buffer, sizeof(str_buffer),
                           "Hello from Cortex-M3 soft-core processor, t=%ds\r\n", value / 4);
        XUartLite_Send(&uart_inst, (u8 *) str_buffer, len);
        xil_printf("Hello from Cortex-M3 soft-core processor, t=%ds\r\n", value / 4);
    }
    value++;
}
