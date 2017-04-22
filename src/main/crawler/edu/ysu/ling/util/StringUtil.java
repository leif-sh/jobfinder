package edu.ysu.ling.util;

/**
 * Created by 10047 on 2016/12/30.
 */
public class StringUtil {
    public static int getTopSalaryFromString(String temp){
        int to = temp.indexOf("k");
        return Integer.parseInt(temp.substring(1, to));
    }
    public static int getBottomSalaryFromString(String temp){
        int from = temp.indexOf("-");
        int to = temp.lastIndexOf("k");
        return Integer.parseInt(temp.substring(from + 1, to));
    }
    public static int getTopExperienceFromString(String temp){
        int from = 0;
        int to = temp.indexOf("-");
        return Integer.parseInt(temp.substring(0, to));
    }
    public static int getBottomExperienceFromString(String temp){
        int from = temp.indexOf("-") + 1;
        int to = temp.indexOf("年");
        return Integer.parseInt(temp.substring(from, to));
    }



}
