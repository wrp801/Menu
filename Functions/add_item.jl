import JSON 

function add_menu_item(item::String)

    my_menu = Dict()

    open("poulsen menu.json","r") do f
      
    my_menu = JSON.parse(f)

    end ## end do 

    l = length(my_menu) 

    new_key = string(l+1)
    ## update the menu
    get!(my_menu,new_key,item);

    stringdata = JSON.json(my_menu);

    open("poulsen menu.json","w") do f 
        write(f,stringdata)
        
    end ## end do 

    print("$item has been added to 'Poulsen Menu.json'")
      
end



