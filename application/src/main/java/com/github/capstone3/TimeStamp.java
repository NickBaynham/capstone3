package com.github.nickbaynham.captstone3.lib;

import java.time.LocalDate;
import java.time.LocalTime;

public class TimeStamp {
    public static String getTime() {
        LocalDate localDate = LocalDate.now();
        LocalTime now = LocalTime.now();
	return localDate.toString() + now.toString();
    }
}
