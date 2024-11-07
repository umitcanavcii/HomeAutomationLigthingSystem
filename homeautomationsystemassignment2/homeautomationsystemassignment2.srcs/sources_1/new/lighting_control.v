
/module lighting_control (
    input motion_sensor,   // Hareket sens�r� giri� sinyali
    input manual_switch,   // Manuel anahtar giri� sinyali
    output light           // I��k ��k�� sinyali
);
    assign light = motion_sensor | manual_switch; // Hareket alg�lan�rsa veya manuel anahtar a��ksa ���k yanar
endmodule


