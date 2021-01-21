class YourDiaperBag::Item
     
    attr_accessor :brand,  :price 

    @@all = []

    def initialize
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def self.create_items
        item_hashes = YourDiaperBag::Scrape.get_items("https://motherearthbaby.com/collections/body-care") + 
                     YourDiaperBag::Scrape.get_items("https://motherearthbaby.com/collections/disposable")            
        item_hashes.each do |item_hash|
            item = self.new
        
            item_hash.each do |k,v|
                item.send("#{k}=", v)
            end
        end
    end  
        
end 





#def self.scrape_web
 #   doc = Nokogiri::HTML(open("https://motherearthbaby.com/collections/disposable"))

  #  diaper_1 = self.new
   # diaper_1.brand = doc.css("div.title").first.children.text.strip
    #diaper_1.price = doc.css("span.amount").first.children.text.strip
    #diaper_1

#end 

#def self.scrape
   #doc = Nokogiri::HTML(open("https://motherearthbaby.com/collections/body-care/products/cjs-butter-shea-butter-balm-2oz-jar?variant=15998602248266"))
   
    #diaper_2 = self.new
    #diaper_2.brand = doc.css("div.title").first.children.text.strip
    #diaper_2.price = doc.css("span.amount").first.children.text.strip
    #diaper_2
      
       





# diaper_1 = self.new
# diaper_1.brand = "Pampers"
# diaper_1.count = "20"
# diaper_1.price = "$19.99"

# diaper_2 = self.new
# diaper_2.brand = "Huggies"
# diaper_2.count = "20"
# diaper_2.price = "$15.99"

# [diaper_1, diaper_2]
