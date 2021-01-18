module Your_Diaper_Bag
   class Menu

        def start
            puts "Welcome To The Diaper Bag"
            list_brands
            menu
        end 
         
     def list_brands
                
        @item = YourDiaperBag::Items.all
         @item.each.with_index(1) do |item, i|
            puts "#{i}. #{item.brand}"
        end 
    end 
         
            def menu
              input = nil
              while input != "exit"
              puts "This is what is in your Diaper Bag?"
              puts "If you would like to see the price please select number or type exit to quit"
              puts "If you would like to see the list again type list"
              input = gets.strip.downcase
         
              if input.to_i > 0
               the_items = @item[input.to_i-1]
               puts "You have chosen #{the_items.brand} -  - #{the_items.price}!"
               
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
   