package service.impl;

import dao.impl.RegisterDaoImpl;
import service.RegisterService;

import java.util.List;

/**
 * Created by Stalary on 17/5/11.
 */
public class RegisterServiceImpl implements RegisterService {
    private String account;
    private String password;
    private String name;
    private String phone;

    public RegisterServiceImpl() {}

    public RegisterServiceImpl(String account,String password,String name,String phone) {
        this.account = account;
        this.password = password;
        this.name = name;
        this.phone = phone;
    }
    @Override
    public int judge() {
        RegisterDaoImpl re = new RegisterDaoImpl(this.account, this.password, this.name, this.phone);
        List list = re.queryUser();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).equals(this.account)) {
                return -1;
            }
        }
        int temp = re.insertUser();
        if (temp == 1) {
            return 1;
        }
        return -1;
    }
}
