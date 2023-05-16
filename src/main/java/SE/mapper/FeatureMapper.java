package SE.mapper;

import SE.pojo.Feature;

import java.util.List;

public interface FeatureMapper {
    Feature selectById(int id);
    List<Feature> selectAll();
}
