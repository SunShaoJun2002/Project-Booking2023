package SE.pojo;

import java.util.HashMap;

public class Feature {
    private Integer id;
    private String facility_list;
    public static HashMap<String,String>facilities_pics;
    private String feature;
    private String breakfast;
    private String single_score_name;
    private String single_score;
    private Integer room_num;

    @Override
    public String toString() {
        return "Feature{" +
                "id=" + id +
                ", facility_list='" + facility_list + '\'' +
                ", feature='" + feature + '\'' +
                ", breakfast='" + breakfast + '\'' +
                ", single_score_name='" + single_score_name + '\'' +
                ", single_score='" + single_score + '\'' +
                ", room_num=" + room_num +
                '}';
    }

    public HashMap<String, String> getFacilities_pics() {
        return facilities_pics;
    }

    public void setFacilities_pics(HashMap<String, String> facilities_pics) {
        this.facilities_pics = facilities_pics;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFacility_list() {
        return facility_list;
    }

    public void setFacility_list(String facility_list) {
        this.facility_list = facility_list;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }

    public String getBreakfast() {
        return breakfast;
    }

    public void setBreakfast(String breakfast) {
        this.breakfast = breakfast;
    }

    public String getSingle_score_name() {
        return single_score_name;
    }

    public void setSingle_score_name(String single_score_name) {
        this.single_score_name = single_score_name;
    }

    public String getSingle_score() {
        return single_score;
    }

    public void setSingle_score(String single_score) {
        this.single_score = single_score;
    }

    public Integer getRoom_num() {
        return room_num;
    }

    public void setRoom_num(Integer room_num) {
        this.room_num = room_num;
    }
}
