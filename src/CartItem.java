package beans;

public class CartItem {

	private int numItems = 0;
	private double pricePerItem = 0.0;
	private String itemName = null;
	
	public void setNumItems(int n){
		numItems = n;
	}
	
	public int getNumItems(){
		return numItems;
	}
	
	public void setPricePerItem(double p) {
		pricePerItem = p;
	}
	
	public double getPricePerItem() {
		return pricePerItem;
	}
	
	public void setItemName(String i){
		itemName = i;
	}
	
	public String getItemName() {
		return itemName;
	}
}
