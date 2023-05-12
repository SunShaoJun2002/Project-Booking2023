package SE.mapper;

import SE.pojo.Description;

public interface DescriptionMapper {
    Description TestDBlink();
    Description searchByID(int id);
}
