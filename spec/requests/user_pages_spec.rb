require 'spec_helper'


describe "User_pages" do

	subject {page}

	describe "Pagina de Registro" do
		before {visit signup_path}

		it { should have_selector('h1', text: 'Registro de Usuario')}
		it { should have_selector('title', text: full_title('Registro'))}

	end

	describe "Registro" do

	    before { visit signup_path }

	    let(:submit) { "Crear usuario" }

	    describe "Con invalida information" do
	      it "No debe crear un usuario" do
	        expect { click_button submit }.not_to change(User, :count)
	      end
	    end

	    describe "con valida informacion" do
	      before do
	        fill_in "name",         with: "Example"
	        fill_in "name_complete",with: "Mario Maradiaga"
	        fill_in "Password",     with: "foobar"
	        fill_in "Confirmation", with: "foobar"
	      end

	      it "puede crear un usuario" do
	        expect { click_button submit }.to change(User, :count).by(1)
	      end
	    end
  	end
 
end




