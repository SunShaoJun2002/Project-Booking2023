package SE.Web;

import SE.mapper.InfoMapper;
import SE.mapper.RoomMapper;
import SE.pojo.Data;
import SE.pojo.Info;
import SE.pojo.Room;
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

@WebServlet("/searchHotel")
public class SearchHotelServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("=================================SearchHotelServlet.begin=========================================");
        long millis1 = System.currentTimeMillis();

        String dest = request.getParameter("dest");
        String check_in_date = request.getParameter("check_in_date");
        String check_out_date = request.getParameter("check_out_date");
        Integer adult_num = Integer.valueOf(request.getParameter("adult_num"));
        Integer child_num = Integer.valueOf(request.getParameter("child_num"));
        Integer room_num = Integer.valueOf(request.getParameter("room_num"));

        if (dest.equals("中国")) dest = null;
        else dest = "%" + dest + "%";

        String des1 = "位成人, ";
        String des2 = "名儿童";
        String des = adult_num + des1 + child_num + des2;
        if (child_num == 0) des = adult_num +"位成人";

        long millis2 = System.currentTimeMillis();

        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);
        RoomMapper roomMapper = sqlSession.getMapper(RoomMapper.class);

        long millis3 = System.currentTimeMillis();

        List<Info> infos = infoMapper.selectContentHotel(dest, des, room_num, check_in_date, check_out_date);
//        System.out.println(infos.size());
//        for(int i = 0; i != 10; ++i)
//        {
//            if (i >= infos.size()) break;
//            System.out.println(infos.get(i));
//        }

        long millis4 = System.currentTimeMillis();

        infoMapper.deleteAll();
        sqlSession.commit();
        infoMapper.insertContentHotel(dest, des, room_num, check_in_date, check_out_date);
        sqlSession.commit();

        long millis5 = System.currentTimeMillis();

        List<Info> hotelList = new ArrayList<>();
        for (int i = 0; i != 25; ++i)
        {
            if (i >= infos.size()) break;
            Info info = infos.get(i);
            List<Room> rooms = roomMapper.selectById(info.getId());
//            List<Room> oneroom = new ArrayList<>();
//            oneroom.add(rooms.get(0));
//            info.setRooms(oneroom);
            info.setRooms(rooms);
            hotelList.add(info);
        }
        Integer totalNumOfHotels = infos.size();


        long millis6 = System.currentTimeMillis();


        String[] facilities = {"免费停车","禁烟客房","家庭间","酒吧","无障碍设施","免费无线网络连接","健身中心","客房服务"};
        Integer[] facilityNums = new Integer[8];
        for(int i = 0; i != facilityNums.length; ++i)
        {
            infoMapper.selectFacility("%" + facilities[i] + "%",null,null,null,null,null,null,null);
            sqlSession.commit();

            facilityNums[i] = infoMapper.countOne();

            infoMapper.reset();
            sqlSession.commit();
        }

        long millis7 = System.currentTimeMillis();

        Integer[] starRatingNums = new Integer[6];
        for(int i = 0; i != 6; ++i)
        {
            infoMapper.selectStarRating(i,null,null,null,null,null);
            sqlSession.commit();

            starRatingNums[i] = infoMapper.countOne();

            infoMapper.reset();
            sqlSession.commit();
        }
        long millis8 = System.currentTimeMillis();

        infoMapper.selectGoodLocation();
        sqlSession.commit();

        Integer locationsGoodNums = infoMapper.countOne();

        infoMapper.reset();
        sqlSession.commit();


        infoMapper.selectBreakfast();
        sqlSession.commit();

        Integer hasBreakfastNums = infoMapper.countOne();

        infoMapper.reset();
        sqlSession.commit();

        long millis9 = System.currentTimeMillis();

        Integer[] ratingNums = new Integer[4];
        for(int i = 0; i != 4; ++i)
        {
            infoMapper.selectRating(i + 6,null,null,null);
            sqlSession.commit();

            ratingNums[i] = infoMapper.countOne();

            infoMapper.reset();
            sqlSession.commit();
        }
        sqlSession.close();


        Data.startDate = check_in_date;
        Data.endDate = check_out_date;

        long millis10 = System.currentTimeMillis();
        System.out.println("$TIME$ Get Parameters: " + (millis2 - millis1));
        System.out.println("$TIME$ Connect to MySQL: " + (millis3 - millis2));
        System.out.println("$TIME$ Main Search: " + (millis4 - millis3));
        System.out.println("$TIME$ Storation: " + (millis5 - millis4));
        System.out.println("$TIME$ Prepare rooms: " + (millis6 - millis5));
        System.out.println("$TIME$ Facility: " + (millis7 - millis6));
        System.out.println("$TIME$ Star Rating: " + (millis8 - millis7));
        System.out.println("$TIME$ Location and Breakfast: " + (millis9 - millis8));
        System.out.println("$TIME$ Rating and close: " + (millis10 - millis9));

        System.out.println("$TIME$ Total: " + (millis10 - millis1));

//        System.out.println("$PARAM$ infos.size(): " + infos.size());
//        System.out.println("$PARAM$ totalNumOfHotels: " + totalNumOfHotels);
//        System.out.println("$PARAM$ facilityNums: " + facilityNums[0] + ", " + facilityNums[1] + ", " + facilityNums[2]);
//        System.out.println("$PARAM$ starRatingNums: " + starRatingNums[0] + ", " + starRatingNums[1] + ", " + starRatingNums[2]);
        System.out.println("$PARAM$ locationsGoodNums: " + locationsGoodNums);
//        System.out.println("$PARAM$ hasBreakfastNums: " + hasBreakfastNums);
//        System.out.println("$PARAM$ ratingNums: " + ratingNums[0] + ", " + ratingNums[1] + ", " + ratingNums[2]);
        System.out.println("$PARAM$ totalNumOfHotels: " + totalNumOfHotels);
        request.setAttribute("hotelList", hotelList);
        request.setAttribute("totalNumOfHotels", totalNumOfHotels);
        request.setAttribute("facilityNums", facilityNums);
        request.setAttribute("starRatingNums", starRatingNums);
        request.setAttribute("locationIsGoodNums", locationsGoodNums);
        request.setAttribute("hasBreakfastNums", hasBreakfastNums);
        request.setAttribute("ratingNums", ratingNums);
        System.out.println("$SYS$ Request loaded.");
        request.getRequestDispatcher("/resultPages/searchresults.jsp").forward(request, response);
        System.out.println("$SYS$ Complete.");

//        File file = new File(".\\imgs\\image\\0_0.jpg");
//        System.out.println(file.getAbsoluteFile());

        System.out.println("=================================SearchHotelServlet.end=========================================");
    }
}
