package edu.ysu.ling.test;

/**
 * Created by 10047 on 2017/6/22.
 */

public class TestRandom {
    public static void main(String[] args){

        for (int n=0;n<10;n++) {
            System.out.print((int) (Math.random()*9)+1);
        }
    }

}
