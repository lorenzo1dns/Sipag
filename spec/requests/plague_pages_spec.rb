require 'spec_helper'

describe "PlaguePages" do
 
 subject {page}

 	describe "Nueva Plaga" do
		before {visit plaguen_path}

		it { should have_selector('h1', text: 'Registro de Plaga')}
		it { should have_selector('title', text: full_title('Plaga'))}

	end

	describe "Plagas" do

	    before { visit plaguen_path }

	    let(:submit) { "Crear Plaga" }

	    describe "Con invalida information" do
	      it "No debe crear una plaga" do
	        expect { click_button submit }.not_to change(Plague, :count)
	      end

	       describe "after submission" do
            before { click_button submit }

            it { should have_selector('title', text: 'Plaga') }
            it { should have_content('error') }
          end

          describe "after saving the plague" do
            before { click_button submit }
            

            it { should have_selector('title', text: 'Plagas') }           
            it { should have_link('Nuevo') }
          end

	    end

	    describe "with valid information" do
          before do
            fill_in "plague[nombre]",         with: "Afidos"            
            fill_in "plague[descripcion]",     with: "Esto es una prueba"
            fill_in "plague[tipoPlaga]", 	with: "Lepidopteros"
          end

          it "should create a plague" do
            expect { click_button submit }.to change(Plague, :count).by(1)
          end

         
        end
	end



end
