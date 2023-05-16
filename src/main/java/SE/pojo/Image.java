package SE.pojo;

public class Image {
    private Integer imgId;
    private byte[] pic;

    @Override
    public String toString() {
        return "Image{" +
                "imgId='" + imgId + '\'' +
                '}';
    }

    public Integer getImgId() {
        return imgId;
    }

    public void setImgId(Integer imgId) {
        this.imgId = imgId;
    }

    public byte[] getPic() {
        return pic;
    }

    public void setPic(byte[] pic) {
        this.pic = pic;
    }

}
