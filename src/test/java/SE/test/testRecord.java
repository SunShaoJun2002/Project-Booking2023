package SE.test;


import SE.mapper.RecordMapper;
import SE.pojo.Record;
import SE.pojo.RecordDetail;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class testRecord {
    @Test
    public void testRecordDetail() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        RecordMapper recordMapper = sqlSession.getMapper(RecordMapper.class);
        List<RecordDetail> details = recordMapper.selectRecordDetailById(12);
        for (RecordDetail detail : details)
        {
            System.out.println(detail);
        }
    }
    @Test
    public void testRecord() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        RecordMapper recordMapper = sqlSession.getMapper(RecordMapper.class);

        Record record = recordMapper.testRecord();
        System.out.println(record);

        sqlSession.close();
    }
    @Test
    public void testPrimaryKey() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        SqlSession sqlSession = sqlSessionFactory.openSession();

        RecordMapper recordMapper = sqlSession.getMapper(RecordMapper.class);

        Record record = new Record();
        record.setRoom_num(2);
        recordMapper.addRecord(record);
        sqlSession.commit();
        System.out.println(record.getRecord_id());

        record.setBooker_name("Mr.Meeseek");
        record.setBusiness_or_travel('f');
        record.setEmail("msseessk@ram.com");
        record.setIs_traveller('t');
        record.setSpecial_requirement("smoke-free room");
        record.setSouth('t');
        record.setRequire_receipt('t');
        record.setArrive_time("11:00:00");
        record.setNation("中国");
        record.setCity("北京");
        record.setAddress("南京东路888号");
        record.setPostal_code("200351");
        record.setPhone("13534793221");

        recordMapper.updateRecord(record);
        sqlSession.commit();

        sqlSession.close();
    }
//    @Test
//    public void testUpdate() throws IOException, ParseException {
//        String resource = "mybatis-config.xml";
//        InputStream inputStream = Resources.getResourceAsStream(resource);
//        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//
//        SqlSession sqlSession = sqlSessionFactory.openSession();
//
//        RecordMapper recordMapper = sqlSession.getMapper(RecordMapper.class);
//
//
//        String str_date1 = "2023-02-01";
//        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
//        java.util.Date parse = sdf1.parse(str_date1);
//        long time = parse.getTime();
//        Date date1 = new Date(time);
//
//        String str_date2 = "2023-02-04";
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        java.util.Date parse1 = sdf.parse(str_date2);
//        long time1 = parse1.getTime();
//        Date date2 = new Date(time1);
//
//        String str = "中国";
//        String string = new String(str.getBytes(),"utf8");
//
//        Record record = new Record();
//        record.setRoom_num(2);
//        record.setBooker_name("Mr.Meeseek");
//        record.setBusiness_or_travel('f');
//        record.setEmail("msseessk@ram.com");
//        record.setIs_traveller('t');
//        record.setSpecial_requirement("smoke-free room");
//        record.setSouth('t');
//        record.setRequire_receipt('t');
//        record.setArrive_time("11:00:00");
//        record.setNation(string);
//        record.setCity("北京");
//        record.setAddress("南京东路888号");
//        record.setPostal_code("200351");
//        record.setPhone("13534793221");
//
//        recordMapper.addRecord(record);
//        Integer id = record.getRecord_id();
//        System.out.println("record_id:" + id);
//
//        RecordDetail recordDetail1 = new RecordDetail();
//        recordDetail1.setRecord_id(record.getRecord_id());
//        recordDetail1.setHotel_id(1);
//        recordDetail1.setRoom_id(2);
//        recordDetail1.setRoom_num(1);
//        recordDetail1.setCheck_in_date(date1);
//        recordDetail1.setCheck_out_date(date2);
//
//        RecordDetail recordDetail = new RecordDetail();
//        recordDetail.setRecord_id(record.getRecord_id());
//        recordDetail.setHotel_id(1);
//        recordDetail.setRoom_id(1);
//        recordDetail.setRoom_num(1);
//        recordDetail.setCheck_in_date(date1);
//        recordDetail.setCheck_out_date(date2);
//
//        recordMapper.addDetail(recordDetail);
//        recordMapper.addDetail(recordDetail1);
//
//        sqlSession.commit();
//        sqlSession.close();
//    }

}
