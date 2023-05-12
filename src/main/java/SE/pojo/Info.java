package SE.pojo;

import java.util.List;

public class Info {
    private Integer id;
    private String hotel_name;
    private String province;
    private String region;
    private String address;
    private Float rating;
    private Integer star_rating;
    private List<Room> rooms;

    @Override
    public String toString() {
        return "Info{" +
                "id=" + id +
                ", hotel_name='" + hotel_name + '\'' +
                ", province='" + province + '\'' +
                ", region='" + region + '\'' +
                ", address='" + address + '\'' +
                ", rating=" + rating +
                ", star_rating=" + star_rating +
                '}';
    }

    public List<Room> getRooms() {
        return rooms;
    }

    public void setRooms(List<Room> rooms) {
        this.rooms = rooms;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHotel_name() {
        return hotel_name;
    }

    public void setHotel_name(String hotel_name) {
        this.hotel_name = hotel_name;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Float getRating() {
        return rating;
    }

    public void setRating(Float rating) {
        this.rating = rating;
    }

    public Integer getStar_rating() {
        return star_rating;
    }

    public void setStar_rating(Integer star_rating) {
        this.star_rating = star_rating;
    }
}
