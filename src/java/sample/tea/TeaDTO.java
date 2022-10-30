/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.tea;

/**
 *
 * @author Trung Nguyen
 */
public class TeaDTO {
    private String productID;
    private String name;
    private double price;
    private int quantity;

    public TeaDTO() {
        this.productID = "";
        this.name = "";
        this.price = 0;
        this.quantity = 0;
    }

    public TeaDTO(String id, String name, double price, int quantity) {
        this.productID = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    TeaDTO(String productID, String name, String price, String quantity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
       
}
