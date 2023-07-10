require "test_helper"

class LlamadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @llamado = llamados(:one)
  end

  test "should get index" do
    get llamados_url
    assert_response :success
  end

  test "should get new" do
    get new_llamado_url
    assert_response :success
  end

  test "should create llamado" do
    assert_difference("Llamado.count") do
      post llamados_url, params: { llamado: { fecha: @llamado.fecha, motivo: @llamado.motivo } }
    end

    assert_redirected_to llamado_url(Llamado.last)
  end

  test "should show llamado" do
    get llamado_url(@llamado)
    assert_response :success
  end

  test "should get edit" do
    get edit_llamado_url(@llamado)
    assert_response :success
  end

  test "should update llamado" do
    patch llamado_url(@llamado), params: { llamado: { fecha: @llamado.fecha, motivo: @llamado.motivo } }
    assert_redirected_to llamado_url(@llamado)
  end

  test "should destroy llamado" do
    assert_difference("Llamado.count", -1) do
      delete llamado_url(@llamado)
    end

    assert_redirected_to llamados_url
  end
end
