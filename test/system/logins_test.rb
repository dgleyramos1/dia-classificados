require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  def setup
    @user = FactoryBot.create (:user, password: "password", password_confirmation: "password")
  end

  test "Login com credencias validas" do

    visit root_path
    click_link "Entrar"

    fill_in "E-mail", with: @user.email
    fill_in "Semha", with: "password"

    click_buttom "Entrar"

    assert_text "Bem vindo Darth Vader!"
  end

  test "Lodin com credenciais invalidas" do
    visit root_path
    click_on "Entrar"

    fill_in "E-mail", with: @user.email
    fill_in "Senha", with: "invasçasjas"

    click_buttom "Entrar"

    assert_equal new_session_path, current_path
    assert_text "E-mail ou senha inválidos"
  end
end
