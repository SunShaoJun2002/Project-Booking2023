package SE.pojo;

public class Record {
    private Integer record_id;
    private Integer room_num;
    private String booker_name;
    private Character business_or_travel;//t为出差，f自由行
    private String email;
    private Character is_traveller;//自己是否入住
    private String special_requirement;//特殊要求
    private Character south;//房间是否需要安排朝南
    private Character require_receipt;//是否需要收据
    private String arrive_time;//到店时间
    private String nation;//国家/地区
    private String city;//城市
    private String address;//地址
    private String postal_code;//邮政编码
    private String phone;//电话

    @Override
    public String toString() {
        return "Record{" +
                "record_id=" + record_id +
                ", room_num=" + room_num +
                ", booker_name='" + booker_name + '\'' +
                ", business_or_travel=" + business_or_travel +
                ", email='" + email + '\'' +
                ", is_traveller=" + is_traveller +
                ", special_requirement='" + special_requirement + '\'' +
                ", south=" + south +
                ", require_receipt=" + require_receipt +
                ", arrive_time='" + arrive_time + '\'' +
                ", nation='" + nation + '\'' +
                ", city='" + city + '\'' +
                ", address='" + address + '\'' +
                ", postal_code='" + postal_code + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }

    public Integer getRecord_id() {
        return record_id;
    }

    public void setRecord_id(Integer record_id) {
        this.record_id = record_id;
    }

    public Integer getRoom_num() {
        return room_num;
    }

    public void setRoom_num(Integer room_num) {
        this.room_num = room_num;
    }

    public String getBooker_name() {
        return booker_name;
    }

    public void setBooker_name(String booker_name) {
        this.booker_name = booker_name;
    }

    public Character getBusiness_or_travel() {
        return business_or_travel;
    }

    public void setBusiness_or_travel(Character business_or_travel) {
        this.business_or_travel = business_or_travel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Character getIs_traveller() {
        return is_traveller;
    }

    public void setIs_traveller(Character is_traveller) {
        this.is_traveller = is_traveller;
    }

    public String getSpecial_requirement() {
        return special_requirement;
    }

    public void setSpecial_requirement(String special_requirement) {
        this.special_requirement = special_requirement;
    }

    public Character getSouth() {
        return south;
    }

    public void setSouth(Character south) {
        this.south = south;
    }

    public Character getRequire_receipt() {
        return require_receipt;
    }

    public void setRequire_receipt(Character require_receipt) {
        this.require_receipt = require_receipt;
    }

    public String getArrive_time() {
        return arrive_time;
    }

    public void setArrive_time(String arrive_time) {
        this.arrive_time = arrive_time;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
