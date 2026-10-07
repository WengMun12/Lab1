import 'dart:io';

void main(){
  print('============================================');
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');
  print('Please enter your pizza size (small, medium, large): ');

  //Read the pizza size from the user
  String? size = stdin.readLineSync();

  if (size != null){
    print('How many pizzas do you want of $size? ');

    //Read the quantity and parse it to an integer
    int quantity = int.parse(stdin.readLineSync()!);

    //Set price to 0
    int price = 0;

    //Determine the price using switch statement
    switch(size.toLowerCase()){
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print("Invalid size entered.");
        return;
    }

    //Calculate total price
    int total = price * quantity;

   //Print total price
    print('Your Total Payment is: \$$total');
  }
}