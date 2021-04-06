cmake_minimum_required(VERSION 3.17)

set(CMAKE_C_FLAGS "--specs=nosys.specs -mcpu=cortex-m3 -Wall -Wextra -g")
set(CMAKE_CXX_FLAGS "--specs=nosys.specs -mcpu=cortex-m3 -Wall -Wextra -g")

set(BSP_DIRECTORY "/home/donlon/Documents/vivado-projects/cortex-m3-test/cortex-m3-test.sdk/standalone_bsp_0")

project(cm3demo C)

set(CMAKE_C_STANDARD 99)

#FILE(GLOB_RECURSE bsp_sources ${BSP_DIRECTORY}/CORTEXM3_AXI_0/libsrc/*.c)
#set_source_files_properties(${bsp_sources} PROPERTIES HEADER_FILE_ONLY TRUE)

add_executable(cm3demo main.c startup.c sys_irq_handlers.c ${bsp_sources})

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
        )
set_target_properties(cm3demo PROPERTIES LINK_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/cm3soc.lds)
