package com.KTV.service.imp;

import com.KTV.mapper.LoginMapper;
import com.KTV.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;
@Service
public class LoginService implements ILoginService {
    @Autowired
    LoginMapper loginMapper;

    @Override
    public int login(Map map) {
        return loginMapper.login(map);
    }

    @Override
    public int login2(Map map) {
        return loginMapper.login2(map);
    }


    @Override
    public int zhuce(Map map) {
        return loginMapper.zhuce(map);
    }

    @Override
    public int selectByName(Map map) {
        return loginMapper.selectByName(map);
    }


}
