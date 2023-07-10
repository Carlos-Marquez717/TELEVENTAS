require "test_helper"

class RegistroLlamadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_llamado = registro_llamados(:one)
  end

  test "should get index" do
    get registro_llamados_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_llamado_url
    assert_response :success
  end

  test "should create registro_llamado" do
    assert_difference("RegistroLlamado.count") do
      post registro_llamados_url, params: { registro_llamado: { cliente_id: @registro_llamado.cliente_id, fecha: @registro_llamado.fecha, motivo: @registro_llamado.motivo } }
    end

    assert_redirected_to registro_llamado_url(RegistroLlamado.last)
  end

  test "should show registro_llamado" do
    get registro_llamado_url(@registro_llamado)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_llamado_url(@registro_llamado)
    assert_response :success
  end

  test "should update registro_llamado" do
    patch registro_llamado_url(@registro_llamado), params: { registro_llamado: { cliente_id: @registro_llamado.cliente_id, fecha: @registro_llamado.fecha, motivo: @registro_llamado.motivo } }
    assert_redirected_to registro_llamado_url(@registro_llamado)
  end

  test "should destroy registro_llamado" do
    assert_difference("RegistroLlamado.count", -1) do
      delete registro_llamado_url(@registro_llamado)
    end

    assert_redirected_to registro_llamados_url
  end
end
