require 'pry'
require 'rubygems'
require 'open-uri'
require 'nokogiri'


  class KefotoScraper::CLI
      @@product_names =[]

    def call

    puts "These are the services that Kefoto offers:"
    service_names
    puts "which service would you like to select?"
    @selection = gets.chomp
    view_price_range
    puts "Would you like to go back to the service menu? y/n"
    answer = gets.chomp
      if answer == "y"
      call
      end
    end

    private

    def home_html
        # @home_html ||=
        #     HTTParty.get root_path

          @page = Nokogiri::HTML(open("https://kefotos.mx"))
          @page

    end

    # TODO: read about ruby memoization
    def home_node

        @home_node ||=
         Nokogiri::HTML(home_html)
    end

    def service_names
      i = 1
      n = 0
      @service_names ||=
      home_node.css(".nav-link").map { |link| @@product_names << link['href'].gsub(/.php/, "") }
      binding.pry
      @service_name = link.delete_suffix('.php')
      while @@product_names.lenght < n
        puts "#{i} #{@@product_names[n]}"
      i += 1
      n += 1
    end
     end

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
