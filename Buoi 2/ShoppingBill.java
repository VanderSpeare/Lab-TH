import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.time.LocalDate;
public class Product
{
    private String description;
    private String productID;
    private double price;
    private double totalPrice;
    private  int qty;// thêm số lượng quan
    Product(String description, String productID, int qty, double price, double totalPrice)
    {
        this.description=description;
        this.productID = productID;
        this.qty = qty;
        this.price = price;
        this.totalPrice = totalPrice;
    }
    public String getDescription()
    {
        return description;
    }
    public String getProductID()
    {
        return productID;
    }
    public int getQty()
    {
        return qty;
    }
    public double getPrice()
    {
        return price;
    }
    public double getTotalPrice()
    {
        return totalPrice;
    }
    //displayFormat
    public static void displayFormat()
    {
        System.out.format("-----------------------------------------------------------------------------------------------------------------------------------");
        System.out.print("\nSTT \t\tMô Tả\t\tsố lượng\t\t Đơn Giá \t\t\t\tThành tiền\n");
        System.out.format("-----------------------------------------------------------------------------------------------------------------------------------\n");
    }
    public void display()
    {
        System.out.format("   %-9s             %-9s      %5d               %9.2f                       %14.2f\n" ,description,  productID, qty, price, totalPrice);
    }
}
public class ShoppingBill
{
    public static void main(String... args)
    {
        // set giá trị
        String description =  null ;
        String productID = null;
        int qty = 0;
        double price = 0.000;
        double totalPrice = 0.000;
        double overAllPrice = 0.000;
        double cgst, sgst, subtotal=0.000, discount=0.000;
        char choice = '\0';
        LocalDate myObj = LocalDate.now();
        System.out.println("ngày nhập hóa đơn "+ myObj);
        Scanner scan = new Scanner(System.in);
        List<Product> product = new ArrayList<Product>();
        do
        {
            System.out.println("Enter thông tin sản phẩm: ");
            System.out.print(" desciption: ");
            description = scan.nextLine();
            System.out.print("Tên Sản phẩm: ");
            productID = scan.nextLine();
            System.out.print("số lượng: ");
            qty = scan.nextInt();
            System.out.print("giá (trên mỗi sản phẩm): ");
            price = scan.nextDouble();
            totalPrice = price * qty;// tính tổng đơn giá
            overAllPrice = overAllPrice + totalPrice;
            product.add( new Product(description, productID, qty, price, totalPrice) );
            System.out.print("thêm sản phẩm? (y or n): ");
            choice = scan.next().charAt(0);
            scan.nextLine();
        }
    
        while (choice == 'y' || choice == 'Y');
        Product.displayFormat();
        for (Product p : product)
        {
            p.display();
        }
        //tổng giá 
        System.out.println("\n\t\t\t\t\t\t\t\t\t\tTotal Amount (Rs.) " +overAllPrice);
        discount = overAllPrice*2/100;
        System.out.println("\n\t\t\t\t\t\t\t\t\t\t    Discount (Rs.) " +discount);
        subtotal = overAllPrice-discount;
        System.out.println("\n\t\t\t\t\t\t\t\t\t\t          Subtotal "+subtotal);
        sgst=overAllPrice*12/100;
        System.out.println("\n\t\t\t\t\t\t\t\t\t\t          SGST (%) "+sgst);
        cgst=overAllPrice*12/100;
        System.out.println("\n\t\t\t\t\t\t\t\t\t\t          CGST (%) "+cgst);
        System.out.println("\n\t\t\t\t\t\t\t\t\t\t     Invoice Total " +(subtotal+cgst+sgst));
        scan.close();
    }
}