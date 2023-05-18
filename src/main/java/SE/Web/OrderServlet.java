package SE.Web;

import SE.mapper.FeatureMapper;
import SE.mapper.InfoMapper;
import SE.mapper.RecordMapper;
import SE.mapper.RoomMapper;
import SE.pojo.*;
import SE.pojo.Record;
import SE.util.RecordData;
import SE.util.StringIter;
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

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("=================================OrderHotelServlet.begin=========================================");
        StringTools.setHashMap();

        String orderRecord = request.getParameter("orderRecord");
        StringIter orders = new StringIter();
        orders.setData(orderRecord);

        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);
        RoomMapper roomMapper = sqlSession.getMapper(RoomMapper.class);
        FeatureMapper featureMapper = sqlSession.getMapper(FeatureMapper.class);
        RecordMapper recordMapper = sqlSession.getMapper(RecordMapper.class);

        recordMapper.deleteNullRecords();

        Record record = new Record();
        record.setRoom_num(1);
        recordMapper.addRecord(record);
        sqlSession.commit();
        RecordData.recordId = record.getRecord_id();

        Integer hotel_id = Integer.valueOf(orders.next());
        Integer room_id = Integer.valueOf(orders.next());
        Integer room_num = Integer.valueOf(orders.next());
        String check_in_date = orders.next();
        String check_out_date = orders.next();

        RecordDetail recordDetail = new RecordDetail();
        recordDetail.setRecord_id(RecordData.recordId);
        recordDetail.setHotel_id(hotel_id);
        recordDetail.setRoom_id(room_id);
        recordDetail.setRoom_num(room_num);
        recordDetail.setCheck_in_date(check_in_date);
        recordDetail.setCheck_out_date(check_out_date);
        recordMapper.addDetail(recordDetail);
        sqlSession.commit();

        Info hotel_info = infoMapper.selectById(hotel_id);
        Feature hotel_feature = featureMapper.selectById(hotel_id);

        Float totalPrice = 0f;
        Integer totalNum = 0;
        List<Room> roomList = new ArrayList<>();
        List<Integer> room_numList = new ArrayList<>();

        Room room = roomMapper.selectRoom(hotel_id, room_id);
        roomList.add(room);
        room_numList.add(room_num);
        totalPrice += room.getPrice() * room_num;
        totalNum += room_num;

        while (orders.next() != null)
        {
            room_id = Integer.valueOf(orders.next());
            room_num = Integer.valueOf(orders.next());
            orders.next();
            orders.next();

            room = roomMapper.selectRoom(hotel_id, room_id);
            roomList.add(room);
            room_numList.add(room_num);
            totalPrice += room.getPrice() * room_num;
            totalNum += room_num;

            recordDetail.setRoom_id(room_id);
            recordDetail.setRoom_num(room_num);
            recordMapper.addDetail(recordDetail);
            sqlSession.commit();
        }
        record.setRoom_num(totalNum);
        recordMapper.updateRecordNum(record);
        sqlSession.commit();

        sqlSession.close();

        RecordData.hotel_info = hotel_info;
        RecordData.hotel_feature = hotel_feature;
        RecordData.check_in_date = check_in_date;
        RecordData.check_out_date = check_out_date;
        RecordData.totalPrice = totalPrice;
        RecordData.roomList = roomList;
        RecordData.room_numList = room_numList;

        request.setAttribute("hotel_info", hotel_info);
        request.setAttribute("hotel_feature", hotel_feature);
        request.setAttribute("check_in_date", check_in_date);
        request.setAttribute("check_out_date", check_out_date);
        request.setAttribute("totalPrice", totalPrice);
        request.setAttribute("roomList", roomList);
        request.setAttribute("room_numList", room_numList);
        System.out.println("Request loaded.");
        request.getRequestDispatcher("/resultPages/book.jsp").forward(request, response);
        System.out.println("Complete.");

        System.out.println("=================================OrderHotelServlet.end=========================================");
    }
}
