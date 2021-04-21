cmake_minimum_required(VERSION 3.17)

set(CMAKE_C_FLAGS "--specs=nosys.specs -mcpu=cortex-m3 -Wall -Wextra -g")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -fno-exceptions")

set(BSP_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/bsp/standalone_bsp_0")

# Toolchain settings
set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")
if (DEFINED GNU_TOOLCHAIN_PATH)
    if (WIN32)
        set(EXECUTABLE_SUFFIX ".exe")
    endif ()
    message("Toolchain path: ${GNU_TOOLCHAIN_PATH}")
    set(CMAKE_SYSTEM_NAME Generic)
    set(CMAKE_C_COMPILER ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-gcc${EXECUTABLE_SUFFIX})
    set(CMAKE_CXX_COMPILER ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-g++${EXECUTABLE_SUFFIX})
    set(CMAKE_ASM_COMPILER ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-gcc${EXECUTABLE_SUFFIX})
    set(CMAKE_AR ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-ar${EXECUTABLE_SUFFIX})
    set(CMAKE_OBJCOPY ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-objcopy${EXECUTABLE_SUFFIX})
    set(CMAKE_OBJDUMP ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-objdump${EXECUTABLE_SUFFIX})
    set(CMAKE_LINKER ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-ld${EXECUTABLE_SUFFIX})
    set(CMAKE_RANLIB ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-ranlib${EXECUTABLE_SUFFIX})
    set(CMAKE_SIZE ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-size${EXECUTABLE_SUFFIX})
    set(CMAKE_STRIP ${GNU_TOOLCHAIN_PATH}/bin/arm-none-eabi-strip${EXECUTABLE_SUFFIX})
endif ()

project(cm3demo C)

set(CMAKE_C_STANDARD 99)

#FILE(GLOB_RECURSE bsp_sources ${BSP_DIRECTORY}/CORTEXM3_AXI_0/libsrc/*.c)
#set_source_files_properties(${bsp_sources} PROPERTIES HEADER_FILE_ONLY TRUE)

add_executable(cm3demo
        main.c startup.c sys_irq_handlers.c ${bsp_sources})

target_include_directories(cm3demo PRIVATE ${BSP_DIRECTORY}/CORTEXM3_AXI_0/include)
target_include_directories(cm3demo PRIVATE CMSIS/Include)
target_include_directories(cm3demo PRIVATE CMSIS/Device/Include)

target_link_directories(cm3demo PRIVATE ${BSP_DIRECTORY}/CORTEXM3_AXI_0/lib)
target_link_libraries(cm3demo PRIVATE xil)

target_link_options(cm3demo PRIVATE
        --specs=nano.specs
        -T ${CMAKE_CURRENT_SOURCE_DIR}/cm3soc.lds
        -Wall
        -Wextra
        -Xlinker -Map=cm3demo.map
        )

set_target_properties(cm3demo PROPERTIES LINK_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/cm3soc.lds)

add_custom_command(
        TARGET cm3demo
        POST_BUILD
        COMMAND ${CMAKE_OBJCOPY} -O verilog $<TARGET_FILE:cm3demo> ${cm3demo_BINARY_DIR}/cm3demo.hex
        BYPRODUCTS ${cm3demo_BINARY_DIR}/cm3demo.hex
        WORKING_DIRECTORY $<TARGET_FILE_DIR:cm3demo>
        VERBATIM)