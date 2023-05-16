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

@WebServlet("/selectHotel")
public class SelectHotelServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("=================================SelectHotelServlet.begin=========================================");

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
        infoMapper.reset();
        sqlSession.commit();

        String[] facilityList = {"%免费停车%", "%禁烟客房%", "%家庭间%", "%酒吧%", "%无障碍设施%", "%免费无线网络连接%", "%健身中心%", "%客房服务%"};
        List<String> facilitiesList = new ArrayList<>();
        for (int i = 0; i != selectFacility.length; ++i)
        {
            if (selectFacility[i] == 1)
            {
                facilitiesList.add(facilityList[i]);
            }
        }
        String[] facilitiesString = new String[facilityList.length];
        for (int i = 0; i != facilityList.length; ++i)
        {
            if (i >= facilitiesList.size()) facilitiesString[i] = null;
            else facilitiesString[i] = facilitiesList.get(i);
        }

        if (facilitiesString[0] != null)
        {
            infoMapper.selectFacility(facilitiesString[0],facilitiesString[1],facilitiesString[2],facilitiesString[3],
                    facilitiesString[4],facilitiesString[5],facilitiesString[6],facilitiesString[7]);
            sqlSession.commit();
        }

        List<Integer> starList = new ArrayList<>();
        for (int i = 0; i != 6; ++i)
        {
            if (selectStarRating[i] == 1 )
            {
                starList.add(i);
            }
        }
        Integer[] starArr = new Integer[6];
        for(int i = 0; i != 6; ++i)
        {
            if (i >= starList.size()) starArr[i] = null;
            else starArr[i] = starList.get(i);
        }
        if (starArr[0] != null)
        {
            infoMapper.selectStarRating(starArr[0],starArr[1],starArr[2],starArr[3],starArr[4],starArr[5]);
            sqlSession.commit();
        }

        if (locationIsGood == 1){
            infoMapper.selectGoodLocation();
            sqlSession.commit();
        }

        if (hasBreakfast == 1){
            infoMapper.selectBreakfast();
            sqlSession.commit();
        }

        List<Integer> ratingList = new ArrayList<>();
        for (int i = 0; i != 4; ++i)
        {
            if (selectRating[i] == 1)
            {
                ratingList.add(i + 6);
            }
        }
        Integer[] ratingArr = new Integer[4];
        for (int i = 0; i != 4; ++i)
        {
            if (i >= ratingList.size()) ratingArr[i] = null;
            else ratingArr[i] = ratingList.get(i);
        }

        if (ratingArr[0] != null)
        {
            infoMapper.selectRating(ratingArr[0],ratingArr[1],ratingArr[2],ratingArr[3]);
            sqlSession.commit();
        }

        List<Info> infoList = infoMapper.selectOne();
        Integer totalNumOfHotels = infoList.size();

        List<Info> hotelList = new ArrayList<>();
        for (int i = 0; i != 25; ++i)
        {
            Info info = infoList.get(i);
            List<Room> rooms = roomMapper.selectById(info.getId());
            info.setRooms(rooms);
            hotelList.add(info);
        }
        sqlSession.close();

        System.out.println("$PARAM$ totalNumOfHotels: " + totalNumOfHotels);
        if (totalNumOfHotels != 0) System.out.println("$PARAM$ First Info: " + infoList.get(0));

        request.setAttribute("hotelList", hotelList);
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
        request.getRequestDispatcher("/resultPages/searchresults.jsp").forward(request, response);

        System.out.println("=================================SelectHotelServlet.end=========================================");
    }
}
