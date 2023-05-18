package SE.Web;

import SE.mapper.DescriptionMapper;
import SE.mapper.FeatureMapper;
import SE.mapper.InfoMapper;
import SE.mapper.RoomMapper;
import SE.pojo.*;
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
import java.util.List;

@WebServlet("/clickHotel")
public class ClickHotelServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("=================================ClickHotelServlet.begin=========================================");

        Integer hotel_id = Integer.valueOf(request.getParameter("hotel_id"));

        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);
        RoomMapper roomMapper = sqlSession.getMapper(RoomMapper.class);
        DescriptionMapper descriptionMapper = sqlSession.getMapper(DescriptionMapper.class);
        FeatureMapper featureMapper = sqlSession.getMapper(FeatureMapper.class);

        Info info = infoMapper.selectById(hotel_id);
        Description description = descriptionMapper.searchByID(hotel_id);
        Feature feature = featureMapper.selectById(hotel_id);
        List<Room> rooms = roomMapper.selectById(hotel_id);
        info.setRooms(rooms);

//        for(Room r : rooms)
//        {
//            System.out.println(r);
//        }
        sqlSession.close();

        request.setAttribute("hotel_id", hotel_id);
        request.setAttribute("img_num", StringTools.getHotelNum(hotel_id));
        request.setAttribute("hotel_info", info);
        request.setAttribute("hotel_des", description);
        request.setAttribute("hotel_feature", feature);
        request.setAttribute("check_in_date", Data.startDate);
        request.setAttribute("check_out_date", Data.endDate);
        System.out.println("Request loaded.");
        request.getRequestDispatcher("/resultPages/hotel.jsp").forward(request, response);
        System.out.println("Complete.");

        System.out.println("=================================ClickHotelServlet.end=========================================");
    }
}
