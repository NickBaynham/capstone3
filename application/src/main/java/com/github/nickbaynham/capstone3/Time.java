package com.github.nickbaynham.capstone3;

import com.github.nickbaynham.captstone3.lib.TimeStamp;

public class Time {
    public static void main(String[] args) throws InterruptedException {
        System.out.println("Hello, World!");
        for (;;) {
            Thread.sleep(10000);
            String timestamp = TimeStamp.getTime();
            System.out.println("I am alive on " + timestamp);
        }
    }
}
