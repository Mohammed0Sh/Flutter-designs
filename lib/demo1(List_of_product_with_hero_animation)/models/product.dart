class Product{

 final id;
 final String name,img,description;
 final double price;

  Product({this.id, this.name, this.img, this.description, this.price});
 


}

List<Product> productList=[
 
 Product(
   id:1,
   name: 'product 1',
   img: 'assets/images/1.png',
   description: 'description for product 1 and information about price and center location ' ,
   price: 30.5
 ),
  Product(
   id:2,
   name: 'product 2',
   img: 'assets/images/2.jpg',
   description: 'description for product 2 and information about price and center location ' ,
   price: 49.9
 ),
  Product(
   id:3,
   name: 'product 3',
   img: 'assets/images/3.jpg',
   description: 'description for product 3 and information about price and center location ' ,
   price: 40.6
 ),
  Product(
   id:4,
   name: 'product 4',
   img: 'assets/images/4.png',
   description: 'description for product 4 and information about price and center location ' ,
   price: 60.5
 )

];