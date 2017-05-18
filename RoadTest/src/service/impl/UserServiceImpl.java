package service.impl;

import dao.impl.UserDaoImpl;
import service.UserService;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by Stalary on 17/5/11.
 */
public class UserServiceImpl implements UserService{
    private String type;

    public UserServiceImpl() {}

    public UserServiceImpl(String type) {
        this.type = type;
    }
    @Override
    public List queryJudge() {
        UserDaoImpl user = new UserDaoImpl();
        List list = new ArrayList();
        if(this.type.equals("预约")) {
            list = user.reserve();
            return list;
        } else if(this.type.equals("取消预约")) {
            list = user.cancelReserve();
            return list;
        } else if(this.type.equals("查询预约情况")) {
            list = user.queryReserve();
            return list;
        } else if(this.type.equals("查询道路")) {
            list = user.queryRoad();
            return list;
        }
        return list;
    }
}
