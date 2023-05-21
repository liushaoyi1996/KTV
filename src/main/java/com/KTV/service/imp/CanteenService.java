package com.KTV.service.imp;

import com.KTV.mapper.CanteenMapper;
import com.KTV.service.ICanteenService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class CanteenService implements ICanteenService {
    @Autowired
    CanteenMapper canteenMapper;

    @Override
    public Map select(Map map) {
        int currentPage=Integer.parseInt(map.get("pageSize").toString());
        int pageSize=Integer.parseInt(map.get("rows").toString());
        RowBounds rowBounds=new RowBounds((currentPage-1)*pageSize, pageSize);
        Map map1=new HashMap();
        map1.put("rows",canteenMapper.select(rowBounds,map));
        map1.put("total",canteenMapper.select(new RowBounds(),map).size());
        return map1;
    }

    @Override
    public Map selectBysum(Map map) {
        return canteenMapper.selectBysum(map);
    }

    @Override
    public int delete(Map map) {
        return canteenMapper.delete(map);
    }

    @Override
    public int add(Map map) {
        return canteenMapper.add(map);
    }

    @Override
    public int edit(Map map) {
        return canteenMapper.edit(map);
    }
}
