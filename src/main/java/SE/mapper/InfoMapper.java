package SE.mapper;

import SE.pojo.Info;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InfoMapper {
    List<Info> testSearch();
    Info selectById(@Param("id")Integer id);
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
    void selectFacility(@Param("Facilities0")String facilities0,@Param("Facilities1")String facilities1,
                        @Param("Facilities2")String facilities2,@Param("Facilities3")String facilities3,
                        @Param("Facilities4")String facilities4,@Param("Facilities5")String facilities5,
                        @Param("Facilities6")String facilities6,@Param("Facilities7")String facilities7);
    void selectStarRating(@Param("Star0")Integer star0,@Param("Star1")Integer star1,@Param("Star2")Integer star2,
                          @Param("Star3")Integer star3,@Param("Star4")Integer star4,@Param("Star5")Integer star5);
    void selectGoodLocation();
    void selectBreakfast();
    void selectRating(@Param("Rate0")Integer rate0,@Param("Rate1")Integer rate1,@Param("Rate2")Integer rate2,@Param("Rate3")Integer rate3);
    int countOne();
    List<Info> selectOne();
    //void testInsertPic(Image);
}
