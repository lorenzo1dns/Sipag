require 'spec_helper'

describe "AuthenticationPages" do

	subject { page }

	describe "Pagina de Inicio de sesion" do
		   before { visit signin_path }		  

		  	it { should have_selector('h1',    text: 'Iniciar Sesion') }
		   it { should have_selector('title', text: 'Sesion') }
	end

	describe "signin" do
    	before { visit signin_path }

	    describe "con invalida informacion" do
	      before { click_button "Entrar" }

	      it { should have_selector('title', text: 'Sesion') }
	      it { should have_selector('div.alert.alert-error', text: 'Invalida') }
			
	    end

	    describe "with valid information" do
	      let(:user) { FactoryGirl.create(:user) }
	      before do	        
	        fill_in "Password", with: user.password
	        click_button "Entrar"
	      end

	      it { should have_selector('title', text: user.name) }
	      
    	end
  	end

end