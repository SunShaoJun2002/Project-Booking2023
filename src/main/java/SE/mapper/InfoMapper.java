package SE.mapper;

import SE.pojo.Info;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InfoMapper {
    List<Info> testSearch();
    List<Info> selectContentHotel(
            @Param("Province")String province, @Param("RoomDesc")String roomDesc,
            @Param("RoomNum")Integer roomNum, @Param("StartDate")String startDate, @Param("EndDate")String endDate
    );

    void deleteAll();

    void insertContentHotel(
            @Param("Province")String province, @Param("RoomDesc")String roomDesc,
            @Param("RoomNum")Integer roomNum, @Param("StartDate")String startDate, @Param("EndDate")String endDate
    );

    Integer countNum(@Param("Table")String table, @Param("Field")String field, @Param("Value")String value);
    void reset();
    void selectFacility(@Param("Facilities")String facilities);
    void selectStarRating(@Param("Star")Integer Star);
    void selectGoodLocation();
    void selectBreakfast();
    void selectRating(@Param("Rate")Integer rate);
    int countOne();
    List<Info> selectOne();
}
