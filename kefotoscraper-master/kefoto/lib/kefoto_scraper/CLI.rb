require 'nokogiri'
require 'httparty'
require 'pry'

  module KefotoScraper
    class CLI

    def call

    puts "These are the services that Kefoto offers:"
#binding.pry
    service_names
    puts "which service would you like to select?"
    gets.chomp = @selection
    view_price_range
    puts "Would you like to go back to the service menu? y/n"
    gets.chomp
      if gets.chomp = y
      call
      end
    end

    private

    def home_html
        @home_html = Nokogiri::HTML("https://kefotos.mx/")
            
    end

    # TODO: read about ruby memoization
    def home_node
        @home_node ||=
         Nokogiri::HTML(home_html)
    end

    def service_names
      i = 1
      @service_names ||=
      @link_url = @home_html.css(".nav-item").map {|link| link['href'] }
      @service_name = @link_url.delete(".php")
      puts "#{i} #{@link_url}"
      i +=1
     end
    
    end

    #doc.css('div.heat a').map { |link| link['href'] }

     def view_price_range
       price_range = []
       @service_links.each do |link|
         if @service = link
           link.css(".row").map {|price| price["p"].value}
            price_range << p
         end
         price_range
     end


    def service_links
        @service_links ||=
        home_node.css(".nav-link").map { |link| link['href'] }
    end

    def root_path
        "https://kefotos.mx/"
    end
end
end