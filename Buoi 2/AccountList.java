import java.util.ArrayList;
import java.util.Scanner;
public class AccountList {
    public static ArrayList<String> acclist = new ArrayList<>();
    public ArrayList<String> getAcclist(){
        return acclist;
    }
    private account[] accList;
    private int count =0 ;
    Scanner in = new Scanner(System.in);
public AccountList() {
    this.accList = new account[20];
    this.count= 0;
}
public AccountList(Integer n) {
    System.out.println("nhap so phan tu");
    n = in.nextInt();
    if(n>0){
        this.accList = new account[n];
    }else {
        this.accList = new account[20];
        this.count=0;
    }
}
public void themtaikhoan() {
    account acc = new account();
    accList = new account[1];
    acc.ThemTaiKhoan();
}
}
