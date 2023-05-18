package SE.Web;

import SE.mapper.RecordMapper;
import SE.pojo.Record;
import SE.util.RecordData;
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

@WebServlet("/finalOrder")
public class FinalOrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("=================================OrderHotelServlet.begin=========================================");
        request.setCharacterEncoding("UTF-8");

        String business_or_travel = request.getParameter("business_or_travel");
        String booker_name = request.getParameter("booker_name");
        String email = request.getParameter("email");
        String is_traveller = request.getParameter("is_traveller");
        String special_requirement = request.getParameter("special_requirement");
        String south = request.getParameter("south");
        String require_receipt = request.getParameter("require_receipt");
        String arrive_time = request.getParameter("arrive_time");
        String nation = request.getParameter("nation");
        String city = request.getParameter("city");
        String address = request.getParameter("address");
        String postal_code = request.getParameter("postal_code");
        String phone = request.getParameter("phone");

        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        RecordMapper recordMapper = sqlSession.getMapper(RecordMapper.class);

        Record record = new Record();
        record.setRecord_id(RecordData.recordId);
        record.setAddress(address);
        record.setCity(city);
        record.setEmail(email);
        record.setArrive_time(arrive_time);
        record.setNation(nation);
        record.setBooker_name(booker_name);
        record.setPhone(phone);
        record.setIs_traveller(is_traveller.charAt(0));
        record.setBusiness_or_travel(business_or_travel.charAt(0));
        record.setSpecial_requirement(special_requirement);
        record.setSouth(south.charAt(0));
        record.setRequire_receipt(require_receipt.charAt(0));
        record.setPostal_code(postal_code);

        recordMapper.updateRecord(record);
        sqlSession.commit();
        sqlSession.close();

        request.setAttribute("booker_name",booker_name);
        request.setAttribute("hotel_info",RecordData.hotel_info);
        request.setAttribute("hotel_feature",RecordData.hotel_feature);
        request.setAttribute("check_in_date",RecordData.check_in_date);
        request.setAttribute("check_out_date",RecordData.check_out_date);
        request.setAttribute("totalPrice",RecordData.totalPrice);
        request.setAttribute("business_or_travel",business_or_travel);
        request.setAttribute("record_id",RecordData.recordId);
        request.setAttribute("roomList",RecordData.roomList);
        request.setAttribute("room_numList",RecordData.room_numList);

        System.out.println("Request loaded.");
        request.getRequestDispatcher("/resultPages/confirmation.jsp").forward(request, response);
        System.out.println("Complete.");

        System.out.println("=================================OrderHotelServlet.end=========================================");
    }
}
