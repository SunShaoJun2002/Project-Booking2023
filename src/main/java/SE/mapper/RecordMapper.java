package SE.mapper;

import SE.pojo.Record;
import SE.pojo.RecordDetail;

public interface RecordMapper {
    Record testRecord();
    void addRecord(Record record);
    void addDetail(RecordDetail recordDetail);
}
