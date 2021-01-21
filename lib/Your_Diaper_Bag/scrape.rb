class YourDiaperBag::Scrape
    
        
    
    def self.get_items(url)

        doc = Nokogiri::HTML(open(url))


        product_data = doc.css("div.product")
        product_data.map do |product_node|
          brand = product_node.css("div.title").first.children.text.strip
          price = product_node.css("span.amount").first.children.text.strip
        
          {:brand => brand, :price => price }
        end 
            
    
    end 
end 
    
    
