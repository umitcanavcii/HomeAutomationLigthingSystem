`timescale 1ns / 1ps

module lighting_control_tb;

    reg motion_sensor;      // Hareket sensörü
    reg manual_switch;      // Manuel anahtar
    wire light;             // Iþýk çýkýþý

    // lighting_control modülünü çaðýr
    lighting_control uut (
        .motion_sensor(motion_sensor),
        .manual_switch(manual_switch),
        .light(light)
    );

    initial begin
        // Test senaryosu 1: Hareket yok, anahtar kapalý
        motion_sensor = 0;
        manual_switch = 0;
        #10; // Bekleme süresi
        $display("Test 1: motion_sensor=%b, manual_switch=%b, light=%b", motion_sensor, manual_switch, light);

        // Test senaryosu 2: Hareket var, anahtar kapalý
        motion_sensor = 1;
        manual_switch = 0;
        #10;
        $display("Test 2: motion_sensor=%b, manual_switch=%b, light=%b", motion_sensor, manual_switch, light);

        // Test senaryosu 3: Hareket yok, anahtar açýk
        motion_sensor = 0;
        manual_switch = 1;
        #10;
        $display("Test 3: motion_sensor=%b, manual_switch=%b, light=%b", motion_sensor, manual_switch, light);

        // Test senaryosu 4: Hareket var, anahtar açýk
        motion_sensor = 1;
        manual_switch = 1;
        #10;
        $display("Test 4: motion_sensor=%b, manual_switch=%b, light=%b", motion_sensor, manual_switch, light);

        $stop; // Simülasyonu sonlandýr
    end

endmodule
