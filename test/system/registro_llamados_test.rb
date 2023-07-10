require "application_system_test_case"

class RegistroLlamadosTest < ApplicationSystemTestCase
  setup do
    @registro_llamado = registro_llamados(:one)
  end

  test "visiting the index" do
    visit registro_llamados_url
    assert_selector "h1", text: "Registro llamados"
  end

  test "should create registro llamado" do
    visit registro_llamados_url
    click_on "New registro llamado"

    fill_in "Cliente", with: @registro_llamado.cliente_id
    fill_in "Fecha", with: @registro_llamado.fecha
    fill_in "Motivo", with: @registro_llamado.motivo
    click_on "Create Registro llamado"

    assert_text "Registro llamado was successfully created"
    click_on "Back"
  end

  test "should update Registro llamado" do
    visit registro_llamado_url(@registro_llamado)
    click_on "Edit this registro llamado", match: :first

    fill_in "Cliente", with: @registro_llamado.cliente_id
    fill_in "Fecha", with: @registro_llamado.fecha
    fill_in "Motivo", with: @registro_llamado.motivo
    click_on "Update Registro llamado"

    assert_text "Registro llamado was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro llamado" do
    visit registro_llamado_url(@registro_llamado)
    click_on "Destroy this registro llamado", match: :first

    assert_text "Registro llamado was successfully destroyed"
  end
end
