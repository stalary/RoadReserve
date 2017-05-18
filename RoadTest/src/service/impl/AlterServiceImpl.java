package service.impl;

import dao.impl.AlterDaoImpl;
import service.AlterService;

import java.util.List;

/**
 * Created by Stalary on 17/5/11.
 */
public class AlterServiceImpl implements AlterService{
    private String account;
    private String password;
    private String name;
    private String phone;

    public AlterServiceImpl() {}

    public AlterServiceImpl(String account,String password,String name,String phone) {
        this.account = account;
        this.password = password;
        this.name = name;
        this.phone = phone;
    }

    public int judge() {
        AlterDaoImpl alter = new AlterDaoImpl(this.account, this.password, this.name, this.phone);
        List list = alter.queryUser();
        int count = 0;
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).equals(this.account)) {
                count++;
            }
        }
        if(count == 0) {
            return -1;
        }
        int temp = alter.alterUser();
        if (temp == 1) {
            return 1;
        }
        return -1;
    }
}
