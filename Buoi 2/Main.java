import java.util.Scanner;
import java.util.ArrayList;
public class Main {
    public static ArrayList<String> Default() {
        ArrayList Al = new ArrayList();
        Scanner s = new Scanner(System.in);
        if(Al.getAcclist().size()==0){
            AccountList.Acclist();
            return Al.getAcclist;
        }
    }
    public static void menu(){
        Default();
        account account = new account();
        AccountList Al = new AccountList();
        System.out.print("****************Ngan Hang A Phi Au****************"
                + "\n1. them tai khoan"
                + "\n2. Danh Sach Tai Khoan Hien Co"
                + "\n3. In Thong Tin Tat Ca So Tai Khoan"
                + "\n4. Nap Tien"
                + "\n5. Rut Tien"
                + "\n6. Ket Thuc"
                + "\n Chon 1 - 6: ");
        int Chon = Scanner.nextInt();
        while ( Chon > 6 || Chon <0 ){
            System.out.println(" Khong co chuc nang nay");
            Chon = Scanner.nextInt();
        }
    }
    switch(Chon){
        case 1:  account.ThemTaiKhoan();break;
        case 2:
            if

    }
}