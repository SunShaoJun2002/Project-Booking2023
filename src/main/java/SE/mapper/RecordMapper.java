package SE.mapper;

import SE.pojo.Record;
import SE.pojo.RecordDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecordMapper {
    Record testRecord();
    void addRecord(Record record);
    void updateRecordNum(Record record);
    void updateRecord(Record record);
    void addDetail(RecordDetail recordDetail);
    List<Record> selectRecordsByPhone(@Param("Phone")String phone);
    List<RecordDetail> selectDetailById(@Param("Id")Integer id);
    List<RecordDetail> selectRecordDetailById(@Param("Id")Integer id);
    void deleteNullRecords();
}
