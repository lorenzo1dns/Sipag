# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  admin           :boolean
#  estado          :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  name_complete   :string(255)
#  password_digest :string(255)
#  remember_token  :string(255)
#

require 'spec_helper'

describe User do
  before do 
  	@user= User.new(name: "Usuario", name_complete: "Mario Maradiaga", admin: false, 
  					password: "foobar", password_confirmation: "foobar" )
  end

  subject {@user}

  it {should respond_to(:name)}
  it {should respond_to(:name_complete)}
  it {should respond_to(:admin)}
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
   it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }

  it {should be_valid}

  describe "Cuando el nombre no esta presente" do
  	before {@user.name = " "}
  	it {should_not be_valid}
  end

  describe "Cuando el nombre de usuario es demasiado largo" do

  	before { @user.name = "a"*51 }

  	it {should_not be_valid}
  end

  describe "Cuando el nombre de usuario es demasiado corto" do
  	before { @user.name = "a"*3 }

  	it {should_not be_valid}
  end

  describe "cuando el nombre de usuario es incorrecto" do
  	it "debe ser invalido" do
  		nombre = %w[r,o @rgo ho+la mil-ton]
  		nombre.each do |nombre_invalido|
  			@user.name = nombre_invalido
  			@user.should_not be_valid
  		end
  	end
  end

  describe "cuando el password no este presente" do
  	before {@user.password = @user.password_confirmation = " "}
  	it {should_not be_valid}
  end

   describe "cuando el password de confirmacion no es el mismo" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "cuando el password de confirmacion es nulo" do
    before { @user.password_confirmation = nil }
    it { should_not be_valid }
  end
  describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end
end
