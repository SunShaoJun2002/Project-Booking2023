package SE.test;

import SE.mapper.RoomMapper;
import SE.pojo.Room;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class testRoom {

    @Test
    public void testSearchById() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        RoomMapper roomMapper = sqlSession.getMapper(RoomMapper.class);

        List<Room> rooms = roomMapper.selectById(1);
        System.out.println(rooms.size());
        for(int i = 0; i != 10; ++i)
        {
            if (i >= rooms.size()) break;
            System.out.println(rooms.get(i));
        }
    }
}
