require 'rails_helper'
require 'spec_helper'

RSpec.describe PagesController, :type => :controller do
render_views

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
      it "devrait avoir le bon titre" do
          get 'home'
         response.should have_selector("title",
               :content => "Simple App du tuto RoR | Accueil" )
      end
  end


  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end

     it "devrait avoir le bon titre" do
       get 'contact'
       response.should have_selector("title",
        :content => "Simple App du tuto RoR | Contact")
  end
end

    
   describe "GET 'about' " do
       it "devrait reussir" do
         get 'about'
         response.should be_success          
# expect(response).to have_http_status(:success)
       end
        
       it "devrait avoir le bon titre" do
         get 'about'
         response.should have_selector("title",
          :content => "Simple App du tuto RoR | A propos")
      end
end


end
