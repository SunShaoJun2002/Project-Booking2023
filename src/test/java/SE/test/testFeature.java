package SE.test;

import SE.mapper.FeatureMapper;
import SE.pojo.Feature;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.*;

public class testFeature {
    @Test
    public void testSelectById() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        FeatureMapper featureMapper = sqlSession.getMapper(FeatureMapper.class);

        List<Feature> features = featureMapper.selectById(1);

        System.out.println(features.size());
        for(int i = 0; i != 10; ++i)
        {
            if (i >= features.size()) break;
            System.out.println(features.get(i));
        }
    }

    @Test
    public void countFeatures() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        FeatureMapper featureMapper = sqlSession.getMapper(FeatureMapper.class);

        List<Feature> features = featureMapper.selectAll();

        Map<String,Integer> facilities = new HashMap<>();

        for(Feature f : features)
        {
            String str = f.getFacility_list();
            String[] strs = str.split(",");

            for(String s : strs)
            {
                Integer v = 1;
                if(facilities.containsKey(s))
                {
                    v = facilities.get(s) + 1;
                }
                facilities.put(s,v);
            }
        }

        String ans = "";
        for(String key: facilities.keySet())
        {
            Integer v = facilities.get(key);
            if (v > 1500)
            {
                System.out.println(key+","+v);
                ans += key + ",";
            }
        }
        System.out.println(ans);
    }
}
