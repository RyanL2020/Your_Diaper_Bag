module YourDiaperBag
   class Menu

        def start
            puts "Welcome To The Diaper Bag"
            YourDiaperBag::Item.create_items
            list_brands
            menu
        end 
         
     def list_brands
                
        @items = YourDiaperBag::Item.all
         @items.each.with_index(1) do |item, i|
            puts "#{i}. #{item.brand}"
        end 
    end 
         
            def menu
              input = nil
              while input != "exit"
    
              puts "If you would like to see the price, please select number or type exit to quit"
              input = gets.strip.downcase
              
              if input.to_i > 0
                the_items = @items[input.to_i-1]
                puts "You have chosen #{the_items.brand} -  - #{the_items.price}!"
                puts "If you would like to see the list again type list"
               
              elsif input == "list"
                list_brands
              elsif input == "exit"
                 good_bye
              else
               "bye"
              end 
            end 
         end 
         
        def good_bye
            puts "Thank you! Come Again!"
        end 
    end 
end 
   