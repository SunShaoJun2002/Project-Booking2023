package SE.mapper;

import SE.pojo.Room;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoomMapper {
    List<Room> selectById(int id);
    Room selectRoom(@Param("HotelId")int hotel_id,@Param("RoomId")int room_id);
}
