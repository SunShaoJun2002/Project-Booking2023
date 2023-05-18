package SE.Web;

import SE.mapper.InfoMapper;
import SE.mapper.RoomMapper;
import SE.pojo.Info;
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

import static java.lang.Math.max;
import static java.lang.Math.min;

@WebServlet("/pageChange")
public class PageChangeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("=================================PageChangeServlet.begin=========================================");
//        long millis1 = System.currentTimeMillis();

        Integer pageIndex = Integer.valueOf(request.getParameter("pageIndex"));
        Integer[] selectFacility = StringTools.valuesOf(request.getParameterValues("selectFacility"));
        Integer[] selectStarRating = StringTools.valuesOf(request.getParameterValues("selectStarRating"));
        Integer locationIsGood = StringTools.valueOf(request.getParameter("locationIsGood"));
        Integer hasBreakfast = StringTools.valueOf(request.getParameter("hasBreakfast"));
        Integer[] selectRating = StringTools.valuesOf(request.getParameterValues("selectRating"));

        Integer[] facilityNums = StringTools.valuesOf(request.getParameterValues("facilityNums"));
        Integer[] starRatingNums = StringTools.valuesOf(request.getParameterValues("starRatingNums"));
        Integer locationIsGoodNums = StringTools.valueOf(request.getParameter("locationIsGoodNums"));
        Integer hasBreakfastNums = StringTools.valueOf(request.getParameter("hasBreakfastNums"));
        Integer[] ratingNums = StringTools.valuesOf(request.getParameterValues("ratingNums"));

        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);
        RoomMapper roomMapper = sqlSession.getMapper(RoomMapper.class);

//        long millis2 = System.currentTimeMillis();

        List<Info> infos = infoMapper.selectOne();

        Integer totalNumOfHotels = infos.size();
        pageIndex = max(pageIndex, 1);
        pageIndex = min(pageIndex, (totalNumOfHotels - 1) / 25 + 1);

        Integer downBound = pageIndex * 25 - 25;
        Integer upBound = min(pageIndex * 25, totalNumOfHotels);
        List<Info> infoList = new ArrayList<>();
        for(int i = downBound; i != upBound; ++i)
        {
            Info info = infos.get(i);
            List<Room> roomList = roomMapper.selectById(info.getId());
            info.setRooms(roomList);
            infoList.add(info);
        }

//        long millis3 = System.currentTimeMillis();
        sqlSession.close();
//        System.out.println("$TIME$ Preparation: " + (millis2 - millis1));
//        System.out.println("$TIME$ Search: " + (millis3 - millis2));
//        System.out.println("$TIME$ Total: " + (millis3 - millis1));

//        System.out.println("$PARAM$ pageIndex: " + pageIndex);
//        System.out.println("$PARAM$ upBound: " + upBound);
//        System.out.println("$PARAM$ downBound: " + downBound);
//        System.out.println("$PARAM$ infoList.size(): " + infoList.size());
//        System.out.println("$PARAM$ first info: " + infoList.get(0));

        StringTools.PrintIngeters(facilityNums, "facilityNums");
        StringTools.PrintIngeters(starRatingNums, "starRatingNums");
        System.out.println("locationIsGoodNums:" + locationIsGoodNums);
        System.out.println("hasBreakfastNums:" + hasBreakfastNums);
        StringTools.PrintIngeters(ratingNums, "ratingNums");

        StringTools.PrintIngeters(selectFacility, "selectFacility");
        StringTools.PrintIngeters(selectStarRating, "selectStarRating");
        System.out.println("locationIsGood:" + locationIsGood);
        System.out.println("hasBreakfast:" + hasBreakfast);
        StringTools.PrintIngeters(selectRating, "selectRating");

        request.setAttribute("hotelList", infoList);
        request.setAttribute("pageIndex", pageIndex);
        request.setAttribute("totalNumOfHotels", totalNumOfHotels);
        request.setAttribute("facilityNums", facilityNums);
        request.setAttribute("starRatingNums", starRatingNums);
        request.setAttribute("locationIsGoodNums", locationIsGoodNums);
        request.setAttribute("hasBreakfastNums", hasBreakfastNums);
        request.setAttribute("ratingNums", ratingNums);

        request.setAttribute("selectFacility",selectFacility);
        request.setAttribute("selectStarRating",selectStarRating);
        request.setAttribute("locationIsGood",locationIsGood);
        request.setAttribute("hasBreakfast",hasBreakfast);
        request.setAttribute("selectRating",selectRating);
        System.out.println("Request loaded.");
        request.getRequestDispatcher("/resultPages/searchresults.jsp").forward(request, response);
        System.out.println("Complete.");

        System.out.println("=================================PageChangeServlet.end=========================================");
    }
}
