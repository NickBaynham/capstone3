package com.github.nickbaynham.captstone3.lib;

import java.time.LocalDate;

public class TimeStamp {
    public static String getTime() {
        LocalDate localDate = LocalDate.now();
        return localDate.toString();
    }
}
