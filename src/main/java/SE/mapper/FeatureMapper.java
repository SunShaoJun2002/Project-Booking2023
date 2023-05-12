package SE.mapper;

import SE.pojo.Feature;

import java.util.List;

public interface FeatureMapper {
    List<Feature> selectById(int id);
    List<Feature> selectAll();
}
