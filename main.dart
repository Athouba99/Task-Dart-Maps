void main() {
  // Menu
  Map<String, dynamic> menu = {
    "burger": 6.5,
    "pizza": 5,
    "water": 1.5,
  };
  print(menu);

  menu["chocolate cake"] = 3; // adding new key & value
  print(menu);

  menu["water"] = 0.75; // overwrite the value
  print(menu);

  print("Menu:\n");
  for (var item in menu.entries) {
    // to loop over the map as whole
    print("${item.key} -> ${item.value} KD"); // string interpulation print
  }
  print("\n");

  // calulate order

  const order = ["pizza", "water", "rice"];

  double sum = 0;
  // forEach is a functiom used for the list

  // order.forEach((item) => sum += menu[item]); [ problem with fat arrow]
  order.forEach((item) {
    sum += menu[item];
    print("total order is ${sum}KD");
  });

// Unavailable Items

  print(menu["rice"]);
  order.forEach((item) {
    if (menu[item] != null) {
      sum += menu[item];
    } else {
      print("$item is not on the menu");
    }
  });
  print("the total ${sum}KD");
}
