if (TARGET tinyusb_device)
    add_executable(pico-drone
            pico-drone.c
            )

    # pull in common dependencies
    target_link_libraries(pico-drone pico_stdlib hardware_i2c)

    # enable usb output, disable uart output
    pico_enable_stdio_usb(pico-drone 1)
    pico_enable_stdio_uart(pico-drone 0)

    # create map/bin/hex/uf2 file etc.
    pico_add_extra_outputs(pico-drone)

    # add url via pico_set_program_url
    example_auto_set_url(pico-drone)
elseif(PICO_ON_DEVICE)
    message(WARNING "not building pico-drone because TinyUSB submodule is not initialized in the SDK")
endif()
