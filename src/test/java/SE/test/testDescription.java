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
import java.util.ArrayList;
import java.util.List;

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
    @Test
    public void testArr2(){
        List<List<Integer>> ints = new ArrayList<>();
        List<Integer> i1 = new ArrayList<>();
        i1.add(1);
        i1.add(2);
        i1.add(3);
        ints.add(i1);
        List<Integer> i2 = new ArrayList<>();
        i2.add(0);
        i2.add(2);
        i2.add(4);
        ints.add(i2);

        for(List<Integer> iList : ints)
        {
            for(Integer i : iList){
                System.out.println(i);
            }
            System.out.println();
        }
    }
}
