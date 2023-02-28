package org.example;

public class Main {
    public static void main(String[] args) {
        test();
    }

    public static void test() {
        String ch = "";
        for (int i = 1; i <= 100; i++) {
            ch = (i % 3 == 0) ? "Chaussettes":"";
            ch += (i % 5 == 0) ? "Sales":"";
            ch = (ch.length() == 0) ? Integer.toString(i): ch;
            System.out.println(ch);
            ch = "";
        }
    }
}