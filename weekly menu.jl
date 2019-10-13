menu = [
"Chili",
"Shrimp Scampi",
"Cafe Rio Pork",
"Ceviche",
"Fried Rice",
"Shrimp and Lentil Stew",
"Chicken Wings",
"Tacos",
"Salmon",
"Steaks",
"Potato Cheese Soup",
"Loaded Baked Potatoes",
"Pizza",
"Chicken Ceasar Salad",
"Grilled Cheese",
"Spaghetti and Meatballs",
"Pasta Pesto",
"Grilled Sausage",
"Grilled Chicken",
"Baby Back Ribs",
"Burgers",
"Quinoa Salad"
];


include("set directory.jl")
include("Modules\\Select Days.jl")
using .selection

indices = random_days(4,length(menu));

test = menu[indices]

sub_item("Grilled Chicken",test)
