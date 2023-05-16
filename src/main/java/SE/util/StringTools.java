package SE.util;

import java.io.File;

public class StringTools {
    public static Integer[] valuesOf(String[] strings)
    {
        if (strings == null) return null;

        Integer[] ret = new Integer[strings.length];
        for(int i = 0; i != strings.length; ++i) {
            if (strings[i] == null) ret[i] = null;
            else ret[i] = Integer.valueOf(strings[i]);
        }

        return ret;
    }

    public static Integer valueOf(String str)
    {
        if (str == null) return null;
        return Integer.valueOf(str);
    }

    public static void PrintStrings(String[] strs, String str)
    {
        if (str != null) System.out.println(str + ":");
        if (strs == null) System.out.println("NULL");
        else{
            for (int i = 0; i != strs.length; ++i)
            {
                System.out.println(i + ": " + strs[i]);
            }
        }
    }

    public static void PrintIngeters(Integer[] ints, String str)
    {
        if (str != null) System.out.println(str + ":");
        if (ints == null) System.out.println("NULL");
        else{
            for (int i = 0; i != ints.length; ++i)
            {
                System.out.println(i + ": " + ints[i]);
            }
        }
    }
    public static String getHotelPath(String root, Integer id, Integer picNum)
    {
        return root + id + "_" + picNum + ".jpg";
    }

    public static Integer getHotelNum(Integer id)
    {
        String root = "D:\\ssjEng\\JavaProject\\Booking\\src\\main\\webapp\\imgs\\image\\";
        Integer num = 0;
        File file = new File(getHotelPath(root, id, 0));
        while (file.exists()){
            ++num;
            file = new File(getHotelPath(root, id, num));
        }

        return num;
    }
}
