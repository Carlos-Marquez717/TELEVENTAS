require "application_system_test_case"

class LlamadosTest < ApplicationSystemTestCase
  setup do
    @llamado = llamados(:one)
  end

  test "visiting the index" do
    visit llamados_url
    assert_selector "h1", text: "Llamados"
  end

  test "should create llamado" do
    visit llamados_url
    click_on "New llamado"

    fill_in "Fecha", with: @llamado.fecha
    fill_in "Motivo", with: @llamado.motivo
    click_on "Create Llamado"

    assert_text "Llamado was successfully created"
    click_on "Back"
  end

  test "should update Llamado" do
    visit llamado_url(@llamado)
    click_on "Edit this llamado", match: :first

    fill_in "Fecha", with: @llamado.fecha
    fill_in "Motivo", with: @llamado.motivo
    click_on "Update Llamado"

    assert_text "Llamado was successfully updated"
    click_on "Back"
  end

  test "should destroy Llamado" do
    visit llamado_url(@llamado)
    click_on "Destroy this llamado", match: :first

    assert_text "Llamado was successfully destroyed"
  end
end
