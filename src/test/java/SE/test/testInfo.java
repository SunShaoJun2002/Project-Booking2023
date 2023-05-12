package SE.test;

import SE.mapper.InfoMapper;
import SE.pojo.Info;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class testInfo {
    String[] fFacilities = {"早餐","免费停车","禁烟客房","家庭间","酒吧","无障碍设施","免费无线网络连接","健身中心","客房服务"};
    @Test
    public void testInfo() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);

        List<Info> infos = infoMapper.testSearch();
        System.out.println(infos.get(1));
    }
    @Test
    public void testSearchContentInfo() throws IOException {
        String startDate = "2023-02-02", endDate = "2023-02-03";
        String roomDesc = "2位成人, 1名儿童";
        Integer roomNum = 31;
        String province = "%北京%";
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);

        List<Info> infos = infoMapper.selectContentHotel(province,roomDesc,roomNum,startDate,endDate);

        System.out.println(infos.size());
        for(int i = 0; i != 10; ++i)
        {
            if (i >= infos.size()) break;
            System.out.println(infos.get(i));
        }
    }
    @Test
    public void testSearchContentInfo2() throws IOException {
        String startDate = "2023-02-02", endDate = "2023-02-03";
        String roomDesc = "2位成人, 1名儿童";
        Integer roomNum = 30;
        String province = "%北京%";
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);

        List<Info> infos = infoMapper.selectContentHotel(province,roomDesc,roomNum,startDate,endDate);

        System.out.println(infos.size());
        for(int i = 0; i != 10; ++i)
        {
            if (i >= infos.size()) break;
            System.out.println(infos.get(i));
        }
    }

    @Test
    public void testSearchContentInfo3() throws IOException {
        String roomDesc = "2位成人, 1名儿童";
        Integer roomNum = 30;
        String province = "%北京%";
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);

        List<Info> infos = infoMapper.selectContentHotel(province,roomDesc,roomNum,null,null);

        System.out.println(infos.size());
        for(int i = 0; i != 10; ++i)
        {
            if (i >= infos.size()) break;
            System.out.println(infos.get(i));
        }
    }
    @Test
    public void testInsertContentInfo() throws IOException {
        String roomDesc = "2位成人, 1名儿童";
        Integer roomNum = 30;
        String province = "%北京%";
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);

        infoMapper.insertContentHotel(province,roomDesc,roomNum,null,null);
        sqlSession.commit();
    }@Test
    public void testDelete() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);

        infoMapper.deleteAll();
        sqlSession.commit();
    }
    @Test
    public void testCountNum() throws IOException {
        String table = "feature";
        String field = "facility_list";
        String value = "%" + fFacilities[2] + "%";

        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        InfoMapper infoMapper = sqlSession.getMapper(InfoMapper.class);

        Integer num = infoMapper.countNum(table,field,value);
        System.out.println(num);
    }
}
