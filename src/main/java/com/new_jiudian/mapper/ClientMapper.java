package com.new_jiudian.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;
@Mapper
public interface ClientMapper {
    public List<Map> select(RowBounds rowBounds, Map map);
    public int delete(Map map);
    public int add(Map map);
    public int edit(Map map);
}
