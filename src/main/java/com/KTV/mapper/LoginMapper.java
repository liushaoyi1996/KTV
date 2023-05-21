package com.KTV.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;
@Mapper
public interface LoginMapper {
    public int login(Map map);
    public int login2(Map map);
    public int zhuce(Map map);
    public int selectByName(Map map);
}
