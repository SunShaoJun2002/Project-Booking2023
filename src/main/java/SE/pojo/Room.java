package SE.pojo;

public class Room {
    private Integer hotel_id;
    private Integer room_id;
    private String room_name;
    private String room_facilities;
    private String room_more_facilities;
    private String usable_desc;
    private Float price;
    private Integer room_num;

    @Override
    public String toString() {
        return "Room{" +
                "hotel_id=" + hotel_id +
                ", room_id=" + room_id +
                ", room_name='" + room_name + '\'' +
                ", room_facilities='" + room_facilities + '\'' +
                ", room_more_facilities='" + room_more_facilities + '\'' +
                ", usable_desc='" + usable_desc + '\'' +
                ", price=" + price +
                ", room_num=" + room_num +
                '}';
    }

    public Integer getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(Integer hotel_id) {
        this.hotel_id = hotel_id;
    }

    public Integer getRoom_id() {
        return room_id;
    }

    public void setRoom_id(Integer room_id) {
        this.room_id = room_id;
    }

    public String getRoom_name() {
        return room_name;
    }

    public void setRoom_name(String room_name) {
        this.room_name = room_name;
    }

    public String getRoom_facilities() {
        return room_facilities;
    }

    public void setRoom_facilities(String room_facilities) {
        this.room_facilities = room_facilities;
    }

    public String getRoom_more_facilities() {
        return room_more_facilities;
    }

    public void setRoom_more_facilities(String room_more_facilities) {
        this.room_more_facilities = room_more_facilities;
    }

    public String getUsable_desc() {
        return usable_desc;
    }

    public void setUsable_desc(String usable_desc) {
        this.usable_desc = usable_desc;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getRoom_num() {
        return room_num;
    }

    public void setRoom_num(Integer room_num) {
        this.room_num = room_num;
    }
}
