require 'test_helper'

class PromocionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promocion = promocions(:one)
  end

  test "should get index" do
    get promocions_url
    assert_response :success
  end

  test "should get new" do
    get new_promocion_url
    assert_response :success
  end

  test "should create promocion" do
    assert_difference('Promocion.count') do
      post promocions_url, params: { promocion: { DuracionPromocion: @promocion.DuracionPromocion, IdPromociones: @promocion.IdPromociones, NombrePromocion: @promocion.NombrePromocion, TipoPromocion: @promocion.TipoPromocion } }
    end

    assert_redirected_to promocion_url(Promocion.last)
  end

  test "should show promocion" do
    get promocion_url(@promocion)
    assert_response :success
  end

  test "should get edit" do
    get edit_promocion_url(@promocion)
    assert_response :success
  end

  test "should update promocion" do
    patch promocion_url(@promocion), params: { promocion: { DuracionPromocion: @promocion.DuracionPromocion, IdPromociones: @promocion.IdPromociones, NombrePromocion: @promocion.NombrePromocion, TipoPromocion: @promocion.TipoPromocion } }
    assert_redirected_to promocion_url(@promocion)
  end

  test "should destroy promocion" do
    assert_difference('Promocion.count', -1) do
      delete promocion_url(@promocion)
    end

    assert_redirected_to promocions_url
  end
end
