/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
#include <string.h>
#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "hardware/i2c.h"

static int addr = 0x68;

static void mpu6050_reset() {
    // Two byte reset. First byte register, second byte data
    // There are a load more options to set up the device in different ways that could be added here
    uint8_t buf[] = {0x6B, 0x00};
    i2c_write_blocking(i2c_default, addr, buf, 2, false);
}

static void TMC6300_setup(uint uh,uint ul,uint vh,uint vl,uint wh,uint wl) {
    gpio_init(uh);
    gpio_init(ul);
    gpio_init(vh);
    gpio_init(vl);
    gpio_init(wh);
    gpio_init(wl);

    gpio_set_dir(uh, GPIO_OUT);
    gpio_set_dir(ul, GPIO_OUT);
    gpio_set_dir(vh, GPIO_OUT);
    gpio_set_dir(vl, GPIO_OUT);
    gpio_set_dir(wh, GPIO_OUT);
    gpio_set_dir(wl, GPIO_OUT);
}
static void TMC6300_run(uint uh,uint ul,uint vh,uint vl,uint wh,uint wl) {
    gpio_put(uh,1); 
    gpio_put(vl,1);
    sleep_ms(1);

    gpio_put(vl,0);
    gpio_put(wl,1);
    sleep_ms(1);

    gpio_put(uh,0);
    gpio_put(vh,1);
    sleep_ms(1);

    gpio_put(wl,0);
    gpio_put(ul,1);
    sleep_ms(1);

    gpio_put(vh,0);
    gpio_put(wh,1);
    sleep_ms(1);

    gpio_put(ul,0);
    gpio_put(vl,1);
    sleep_ms(1);
}
static void mpu6050_read_gyro(int16_t gyro[3]) {
    // For this particular device, we send the device the register we want to read
    // first, then subsequently read from the device. The register is auto incrementing
    // so we don't need to keep sending the register we want, just the first.

    uint8_t buffer[6];

    // Now gyro data from reg 0x43 for 6 bytes
    // The register is auto incrementing on each read
    uint8_t val = 0x43;
    i2c_write_blocking(i2c_default, addr, &val, 1, true);
    i2c_read_blocking(i2c_default, addr, buffer, 6, false);  // False - finished with bus

    for (int i = 0; i < 3; i++) {
        gyro[i] = (buffer[i * 2] << 8 | buffer[(i * 2) + 1]);;
    }

}

int main() {
    
    //stdio_init_all();
    
    
    /*
    while (true) {
        printf("TEST2!\n");
        sleep_ms(1000);
    }
    return 0;
    */
    // This example will use I2C0 on the default SDA and SCL pins (4, 5 on a Pico)
    /*
    i2c_init(i2c_default, 400 * 1000);
    gpio_set_function(PICO_DEFAULT_I2C_SDA_PIN, GPIO_FUNC_I2C);
    gpio_set_function(PICO_DEFAULT_I2C_SCL_PIN, GPIO_FUNC_I2C);
    gpio_pull_up(PICO_DEFAULT_I2C_SDA_PIN);
    gpio_pull_up(PICO_DEFAULT_I2C_SCL_PIN);
    // Make the I2C pins available to picotool
    bi_decl(bi_2pins_with_func(PICO_DEFAULT_I2C_SDA_PIN, PICO_DEFAULT_I2C_SCL_PIN, 	GPIO_FUNC_I2C));

    mpu6050_reset();

    int16_t gyro[3];
                 //uh,ul,vh,vl,wh,wl
     
    */
    TMC6300_setup(10,11,12,13,14,15);
    while (1) {
        
        //mpu6050_read_gyro(gyro);

        // These are the raw numbers from the chip, so will need tweaking to be really useful.
        // See the datasheet for more information
        //printf("%d,%d,%d\n", gyro[0], gyro[1], gyro[2]);

        //sleep_ms(0.125);
        
        //TMC6300_run(10,11,12,13,14,15);

        gpio_put(10,1); 
        gpio_put(13,1);
        sleep_ms(1);

        gpio_put(13,0);
        gpio_put(15,1);
        sleep_ms(1);

        gpio_put(10,0);
        gpio_put(12,1);
        sleep_ms(1);

        gpio_put(15,0);
        gpio_put(11,1);
        sleep_ms(1);

        gpio_put(12,0);
        gpio_put(14,1);
        sleep_ms(1);

        gpio_put(11,0);
        gpio_put(13,1);
        sleep_ms(1);
    }
}