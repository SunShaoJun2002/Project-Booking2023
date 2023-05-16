package SE.util;

public class StringIter {
    private String[] strs;
    private int currentIdx;
    private int length;
    public void setData(String str)
    {
        strs = str.split(",");
        currentIdx = 0;
        length = strs.length;
    }
    public String next()
    {
        if (currentIdx >= length) return null;
        String ret = strs[currentIdx];
        ++currentIdx;

        return ret;
    }
    public int getLength()
    {
        return length;
    }
}
