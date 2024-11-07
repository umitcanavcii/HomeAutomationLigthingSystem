
/module lighting_control (
    input motion_sensor,   // Hareket sensörü giriþ sinyali
    input manual_switch,   // Manuel anahtar giriþ sinyali
    output light           // Iþýk çýkýþ sinyali
);
    assign light = motion_sensor | manual_switch; // Hareket algýlanýrsa veya manuel anahtar açýksa ýþýk yanar
endmodule


