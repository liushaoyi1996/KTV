package com.KTV.service;

import java.util.Map;

public interface ICanteenService {
    public Map select(Map map);
    public Map selectBysum(Map map);
    public int delete(Map map);
    public int add(Map map);
    public int edit(Map map);
}
