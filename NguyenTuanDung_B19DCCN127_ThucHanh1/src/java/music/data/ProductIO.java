package music.data;

import java.io.*;
import java.util.*;
import music.business.*;

public class ProductIO {

    private static ArrayList<Product> products = null;

    public static ArrayList<Product> getProducts(String path) {
        ArrayList<Product> listProduct = new ArrayList<>();
        try{
            File f = new File(path);
            Scanner sc = new Scanner(new FileInputStream(f));
            while(sc.hasNextLine()){
                String s = sc.nextLine();
                String a[] = s.split("\\|");
                String productCode = a[0].trim();
                String decription = a[1].trim();
                double price = Double.parseDouble(a[2].trim()) ;
                listProduct.add(new Product(productCode, decription, price));
            }
            sc.close();
        }catch(FileNotFoundException e){
            
        }
        
        return listProduct;
    }

    public static Product getProduct(String productCode, String path) {
        for(Product i: getProducts(path)){
            if(i.getCode().equals(productCode))
                return i;
        }
        return null;
    }

    public static boolean exists(String productCode, String path) {
        products = getProducts(path);
        for (Product p : products) {
            if (productCode != null
                    && productCode.equalsIgnoreCase(p.getCode())) {
                return true;
            }
        }
        return false;
    }

    private static void saveProducts(ArrayList<Product> products,
            String path) {
        try {
            File file = new File(path);
            PrintWriter out
                    = new PrintWriter(
                            new FileWriter(file));
            for (Product p : products) {
                out.println(p.getCode() + "|"
                        + p.getDescription() + "|"
                        + p.getPrice());

            }
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void insert(Product product, String path) {
        products = getProducts(path);
        products.add(product);
        saveProducts(products, path);
    }

    public static void update(Product product, String path) {
        products = getProducts(path);
        for (int i = 0; i < products.size(); i++) {
            Product p = products.get(i);
            if (product.getCode() != null
                    && product.getCode().equalsIgnoreCase(p.getCode())) {
                products.set(i, product);
            }
        }
        saveProducts(products, path);
    }

    public static void delete(Product product, String path) {
        products = getProducts(path);
        for (int i = 0; i < products.size(); i++) {
            Product p = products.get(i);
            if (product != null
                    && product.getCode().equalsIgnoreCase(p.getCode())) {
                products.remove(i);
            }
        }
        saveProducts(products, path);
    }

    public static ArrayList<Product> getProduct(String path) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
