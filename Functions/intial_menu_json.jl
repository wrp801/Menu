using JSON
### This is hardcoded -- should never have to do this again

function make_options()

    food_choices = [
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
    "Cocunut Chicken Curry",
    "Grilled Cheese",
    "Avocado Toast",
    "Spaghetti and Meatballs",
    "Pasta Pesto",
    "Grilled Sausage",
    "Grilled Chicken",
    "Baby Back Ribs",
    "Burgers",
    "Steaks",
    "Steak Burritos",
    "Carne Asada Salad"
]

    d = Dict()

    for (k,v) in enumerate(food_choices)
        d[k] = v
    end

    stringdata = json(d);

    open("poulsen menu.json","w") do f 
        write(f,stringdata)
        
    end ## end do 

end ## end function 

make_options()


