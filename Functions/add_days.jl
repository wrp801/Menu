using Dates

function add_days(n_days::Int64,start_date = today(),;include_today = false)

    ## first block checks to see if the date range should start from today 

    if include_today == true 
        start_date = today() - Day(1)
    end
    
    date_vec = [] ## empty vector to populate through a loop

    for i in 1:n_days

        push!(date_vec,start_date + Day(i))

    end

    return date_vec
    

end



