require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  test "usuario faz cadastro com dados validos" do
    visit "/" 
    click_on "Cadastre-se"

    fill_in "Nome", with: "Dgley ramos"
    fill_in "E-mail", with: "ramos@dev.com"
    fill_in "Senha", with: "minhasenha"
    fill_in "Confirmação de Senha", with: "minhasenha"

    clink_on "Cadastrar"

    assert_text "Cadastro realizados com sucesso!"
  end

  test "usuario faz cadastro com dados invalidos" do
    visit "/"
    click_on "Cadastre-se"
    click_on "Cadastrar"


    assert_text "Erro ao salvar"
  end
end
