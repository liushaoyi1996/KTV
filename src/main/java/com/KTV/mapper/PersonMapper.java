package com.KTV.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;
@Mapper
public interface PersonMapper {
    public List<Map> select(RowBounds rowBounds, Map map);
    public List<Map> selectByCY(RowBounds rowBounds, Map map);
    public int delete(Map map);
    public int add(Map map);
    public int edit(Map map);
}
