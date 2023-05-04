import javax.swing.*;
import java.util.Scanner;
import java.text.NumberFormat;
public class account {
    private long soTK;
    private String tenTK;
    private double soTienTK;
    public String trangThai;
    Scanner input = new Scanner(System.in);
    public account() {
        soTK = 999999;
        soTienTK = 50.00;
        tenTK = " chua xac dinh";
    }

    public account(long soTK, String tenTK, double soTienTK, String trangThai) {
        this.soTK = soTK;
        this.tenTK = tenTK;
        this.soTienTK = soTienTK;
        this.trangThai = trangThai;
    }

    public void ThemTaiKhoan() {
        java.util.Scanner in = new java.util.Scanner(System.in);
        System.out.println("TenTK");
        tenTK = in.nextLine();
        System.out.println("SoTK");
        soTK = in.nextLong();
        System.out.println("Trang Thai");
        trangThai = in.nextLine();
        System.out.println("so du tai khoan");
        soTienTK= in.nextInt();
    }
    public String getTenTK() {
        if (tenTK == null) {
            System.out.println("Ten Tai Khoan Khong Ton Tai");
        }
        return tenTK;
    }

    public long getSoTk() {
        if (soTK > 0 && soTK != 999999) {
            System.out.printf("nhap lai");
            return soTK;
        } else {
            return soTK = 999999;
        }
    }


    public double getSoTienTK() {
        if(soTienTK <= 50){
            System.out.println("So Du Trong Tai Khoan Khong Du De Thuc Hien Giao Dich");
        }
        else {
        return soTienTK = 50;}
        return soTienTK;
    }

    public void setSoTK(long newSotk) {
        soTK = newSotk;
    }

    public void setSoTienTK(double newSoTienTK) {
        soTienTK = newSoTienTK;
    }
    @Override
    public String toString(){
        account account = new account();
        System.out.println("========================================================================");
        System.out.print("Ten Tai Khoan: ");
        System.out.print("\t"+"So Tai Khoan: ");
        System.out.print("\t"+"Trang Thai:"+"\t");
        System.out.print("\t"+"So Du Tai Khoan:");

        System.out.print("\n"+tenTK+"\t");
        System.out.print(soTK+"\t");
        System.out.print("\t"+trangThai+"\t");
        System.out.print(soTienTK+"\n");

        System.out.println("========================================================================");
        return account.tenTK;
    }
    public double NapTien(double TienNap){
        TienNap = input.nextDouble();
        if (TienNap <= 50) {
            System.out.println("Invalid");

        }
        else{
            soTienTK = soTienTK + TienNap;

        }
        return soTienTK;
    }

    public double RutTien(double TienRut){

        if (soTienTK < TienRut) {
            System.out.println("Invalid amount.");
        }
        else if (TienRut >= 50) {
            System.out.println("Invalid");
        }
        else {
            soTienTK = soTienTK- TienRut;

        }
        return soTienTK;
    }

}