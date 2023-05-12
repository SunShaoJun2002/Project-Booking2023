package SE.test;

import SE.mapper.DescriptionMapper;
import SE.pojo.Description;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;

public class testDescription {
    @Test
    public void testLink() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        DescriptionMapper descriptionMapper = sqlSession.getMapper(DescriptionMapper.class);

        Description description = descriptionMapper.TestDBlink();
        System.out.println(description);

        sqlSession.close();
    }

    @Test
    public void testSearchId() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        DescriptionMapper descriptionMapper = sqlSession.getMapper(DescriptionMapper.class);

        Description description = descriptionMapper.searchByID(2);
        System.out.println(description);

        sqlSession.close();
    }
}
