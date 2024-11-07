`timescale 1ns / 1ps

module lighting_control_tb;

    reg motion_sensor;      // Hareket sens�r�
    reg manual_switch;      // Manuel anahtar
    wire light;             // I��k ��k���

    // lighting_control mod�l�n� �a��r
    lighting_control uut (
        .motion_sensor(motion_sensor),
        .manual_switch(manual_switch),
        .light(light)
    );

    initial begin
        // Test senaryosu 1: Hareket yok, anahtar kapal�
        motion_sensor = 0;
        manual_switch = 0;
        #10; // Bekleme s�resi
        $display("Test 1: motion_sensor=%b, manual_switch=%b, light=%b", motion_sensor, manual_switch, light);

        // Test senaryosu 2: Hareket var, anahtar kapal�
        motion_sensor = 1;
        manual_switch = 0;
        #10;
        $display("Test 2: motion_sensor=%b, manual_switch=%b, light=%b", motion_sensor, manual_switch, light);

        // Test senaryosu 3: Hareket yok, anahtar a��k
        motion_sensor = 0;
        manual_switch = 1;
        #10;
        $display("Test 3: motion_sensor=%b, manual_switch=%b, light=%b", motion_sensor, manual_switch, light);

        // Test senaryosu 4: Hareket var, anahtar a��k
        motion_sensor = 1;
        manual_switch = 1;
        #10;
        $display("Test 4: motion_sensor=%b, manual_switch=%b, light=%b", motion_sensor, manual_switch, light);

        $stop; // Sim�lasyonu sonland�r
    end

endmodule
