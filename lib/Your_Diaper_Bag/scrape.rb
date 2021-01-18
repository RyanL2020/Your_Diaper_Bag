class Scrape
    
        
    
    def self.get_item_1
        doc = Nokogiri::HTML(open("https://motherearthbaby.com/collections/disposable"))
    
        brand = doc.css("div.title").first.children.text.strip
        price = doc.css("span.amount").first.children.text.strip
        item_hash_1 = {:brand => brand, :price => price }
        item_hash_1
            
    
    end 
    
    def self.get_item_2
        doc = Nokogiri::HTML(open("https://motherearthbaby.com/collections/body-care/products/cjs-butter-shea-butter-balm-2oz-jar?variant=15998602248266"))
            
        brand = doc.css("div.title").first.children.text.strip
        price = doc.css("span.amount").first.children.text.strip
        item_hash_2 = {:brand => brand, :price => price}
        item_hash_2
                
    end 
    
end 
 
