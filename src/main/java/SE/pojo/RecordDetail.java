package SE.pojo;

import java.sql.Date;

public class RecordDetail {
    private Integer record_id;
    private Integer hotel_id;
    private Integer room_id;
    private Integer room_num;
    private Date check_in_date;
    private Date check_out_date;

    @Override
    public String toString() {
        return "RecordDetail{" +
                "record_id=" + record_id +
                ", hotel_id=" + hotel_id +
                ", room_id=" + room_id +
                ", room_num=" + room_num +
                ", check_in_date=" + check_in_date +
                ", check_out_date=" + check_out_date +
                '}';
    }

    public Integer getRecord_id() {
        return record_id;
    }

    public void setRecord_id(Integer record_id) {
        this.record_id = record_id;
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

    public Integer getRoom_num() {
        return room_num;
    }

    public void setRoom_num(Integer room_num) {
        this.room_num = room_num;
    }

    public Date getCheck_in_date() {
        return check_in_date;
    }

    public void setCheck_in_date(Date check_in_date) {
        this.check_in_date = check_in_date;
    }

    public Date getCheck_out_date() {
        return check_out_date;
    }

    public void setCheck_out_date(Date check_out_date) {
        this.check_out_date = check_out_date;
    }
}
