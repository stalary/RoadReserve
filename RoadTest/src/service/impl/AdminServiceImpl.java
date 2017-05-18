package service.impl;

import dao.impl.AdminDaoImpl;
import service.AdminService;

/**
 * Created by Stalary on 17/5/17.
 */
public class AdminServiceImpl  implements AdminService{
    private String id;
    private String type;

    public AdminServiceImpl(){}

    public AdminServiceImpl(String id, String type){
        this.id = id;
        this.type = type;
    }
    @Override
    public int judge() {
        AdminDaoImpl admin = new AdminDaoImpl(this.id);
        if(this.type.equals("管理预约")) {
            int temp = admin.deleteReserve();
            if(temp == 1) {
                return 1;
            } else {
                return -1;
            }
        } else {
            int temp = admin.deleteRoad();
            if(temp == 1) {
                return 1;
            } else {
                return -1;
            }
        }
    }
}
