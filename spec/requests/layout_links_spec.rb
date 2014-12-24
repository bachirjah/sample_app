require 'rails_helper'
require 'spec_helper'


#RSpec.describe "LayoutLinks", :type => :request do
 # describe "GET /layout_links" do
  #  it "works! (now write some real specs)" do
   #   get layout_links_index_path
    #  expect(response).to have_http_status(200)
   # end
 # end
#end


RSpec.describe "layoutLinks" do

    it "devrait trouver une page d'accueil '/' " do 
       get '/'
           response.should have_selector('title', :content => "Accueil")
      end

    it "devrait trouver une page contact ay '/contact' " do
        get '/contact'
           response.should have_selector('title', :content => "Contact")
          end

        it "devrait trouver une page at '/about' " do 
         get '/about'
              response.should have_selector('title',  :content => "A propos")
           end

          it "devrait trouver une page at '/help'" do
            get '/help'
               response.should have_selector('title', :content => "Aide")
            end

end

