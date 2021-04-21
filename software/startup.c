#include <sys/cdefs.h>
#include <stdint.h>

extern uint32_t __data_load;  // NOLINT
extern uint32_t __data_start; // NOLINT
extern uint32_t __data_end;   // NOLINT
extern uint32_t __stack_top;  // NOLINT

void Default_Handler(void);

_Noreturn
extern int _mainCRTStartup(); // NOLINT

_Noreturn
void Reset_Handler(void);

_Noreturn __used
void System_Startup();

__attribute__((weak, alias("Default_Handler")))
_Noreturn extern void HardFault_Handler(void);

__attribute__((weak, alias("Default_Handler")))
_Noreturn extern void MemManage_Handler(void);

__attribute__((weak, alias("Default_Handler")))
_Noreturn extern void BusFault_Handler(void);

__attribute__((weak, alias("Default_Handler")))
_Noreturn extern void UsageFault_Handler(void);

#ifdef __GNUC__
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wmissing-attributes"
#endif

__attribute__((weak, alias("Default_Handler")))
extern void NMI_Handler(void);

__attribute__((weak, alias("Default_Handler")))
extern void SysTick_Handler(void);

#ifdef __GNUC__
#pragma GCC diagnostic pop
#endif

__used __section(".intvecs")
const void *const interruptVectors[] = { // NOLINT
        &__stack_top,                          /* The initial stack pointer */
        Reset_Handler,                         /* The reset handler         */
        NMI_Handler,                           /* The NMI handler           */
        HardFault_Handler,                     /* The hard fault handler    */
        MemManage_Handler,                     /* The MPU fault handler     */
        BusFault_Handler,                      /* The bus fault handler     */
        UsageFault_Handler,                    /* The usage fault handler   */
        0,                                     /* Reserved                      */
        0,                                     /* Reserved                      */
        0,                                     /* Reserved                      */
        0,                                     /* Reserved                      */
        Default_Handler,                       /* SVCall Handler                */
        Default_Handler,                       /* Debug Monitor Handler         */
        0,                                     /* Reserved                      */
        Default_Handler,                       /* PendSV Handler                */
        SysTick_Handler,                       /* SysTick Handler               */

        /* External Interrupts */
        Default_Handler,  /* Unused IRQ0 */
        Default_Handler,  /* Unused IRQ1 */
        Default_Handler,  /* Unused IRQ2 */
        Default_Handler,  /* Unused IRQ3 */
        Default_Handler,  /* Unused IRQ4 */
        Default_Handler,  /* Unused IRQ5 */
        Default_Handler,  /* Unused IRQ6 */
        Default_Handler,  /* Unused IRQ7 */
        Default_Handler,  /* Unused IRQ8 */
        Default_Handler,  /* Unused IRQ9 */
        Default_Handler,  /* Unused IRQ10 */
        Default_Handler,  /* Unused IRQ11 */
        Default_Handler,  /* Unused IRQ12 */
        Default_Handler,  /* Unused IRQ13 */
        Default_Handler,  /* Unused IRQ14 */
        Default_Handler,  /* Unused IRQ15 */
        Default_Handler,  /* Unused IRQ16 */
        Default_Handler,  /* Unused IRQ17 */
        Default_Handler,  /* Unused IRQ18 */
        Default_Handler,  /* Unused IRQ19 */
        Default_Handler,  /* Unused IRQ20 */
        Default_Handler,  /* Unused IRQ21 */
        Default_Handler,  /* Unused IRQ22 */
        Default_Handler,  /* Unused IRQ23 */
        Default_Handler,  /* Unused IRQ24 */
        Default_Handler,  /* Unused IRQ25 */
        Default_Handler,  /* Unused IRQ26 */
        Default_Handler,  /* Unused IRQ27 */
        Default_Handler,  /* Unused IRQ28 */
        Default_Handler,  /* Unused IRQ29 */
        Default_Handler,  /* Unused IRQ30 */
        Default_Handler,  /* Unused IRQ31 */
};

_Noreturn __attribute__((naked))
void Reset_Handler(void) {
    // load sp
    asm volatile ("mov sp, %[stack_top]":: [stack_top] "r"(&__stack_top));
    asm volatile ("mov pc, %[startup]":: [startup] "r"(System_Startup));
}

_Noreturn
void System_Startup() {
    // load .data segment
    uint32_t *p_src = &__data_load;
    uint32_t *p_dst = &__data_start;
    while (p_dst < &__data_end) {
        *p_dst++ = *p_src++;
    }
    // CRT startup
    _mainCRTStartup();
}

_Noreturn void Default_Handler(void) {
    /* Enter an infinite loop. */
    while (1) {
        asm volatile ("nop");
    }
}
