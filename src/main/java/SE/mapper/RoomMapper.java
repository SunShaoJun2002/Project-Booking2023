package SE.mapper;

import SE.pojo.Room;

import java.util.List;

public interface RoomMapper {
    List<Room> selectById(int id);
}
