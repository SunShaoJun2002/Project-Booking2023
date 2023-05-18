package SE.Web;

import SE.mapper.InfoMapper;
import SE.mapper.RecordMapper;
import SE.mapper.RoomMapper;
import SE.pojo.Info;
import SE.pojo.Record;
import SE.pojo.RecordDetail;
import SE.pojo.Room;
import SE.util.StringTools;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/checkRecords")
public class CheckRecordsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("=================================CheckRecordsServlet.begin=========================================");
        StringTools.setHashMap();

        String phone = request.getParameter("phone");
        phone = "%" + phone + "%";

        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();
        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);
        RoomMapper roomMapper = sqlSession.getMapper(RoomMapper.class);
        RecordMapper recordMapper = sqlSession.getMapper(RecordMapper.class);

        List<Record> record_list = recordMapper.selectRecordsByPhone(phone);
        List<Info> hotel_list = new ArrayList<>();
        List<List<RecordDetail>> bookedRoomRecords = new ArrayList<>();
        List<List<Room>> bookedRooms = new ArrayList<>();
        for (Record r : record_list){
            List<RecordDetail> details = recordMapper.selectDetailById(r.getRecord_id());
            List<Room> rooms = new ArrayList<>();
            for(RecordDetail rd : details){
                Room room = roomMapper.selectRoom(rd.getHotel_id(),rd.getRoom_id());
                rooms.add(room);
            }
            Info hotel = infoMapper.selectById(details.get(0).getHotel_id());

            hotel_list.add(hotel);
            bookedRoomRecords.add(details);
            bookedRooms.add(rooms);
        }

        sqlSession.close();

        request.setAttribute("record_list",record_list);
        request.setAttribute("hotel_list",hotel_list);
        request.setAttribute("bookedRooms",bookedRooms);
        request.setAttribute("bookedRoomRecords",bookedRoomRecords);

        System.out.println("Request loaded.");
        request.getRequestDispatcher("/resultPages/checkrecords.jsp").forward(request, response);
        System.out.println("Complete.");

        System.out.println("=================================CheckRecordsServlet.end=========================================");
    }
}
