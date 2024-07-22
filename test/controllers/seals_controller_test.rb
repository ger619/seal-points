require 'test_helper'

class SealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seal = seals(:one)
  end

  test 'should get index' do
    get seals_url
    assert_response :success
  end

  test 'should get new' do
    get new_seal_url
    assert_response :success
  end

  test 'should create seal' do
    assert_difference('Seal.count') do
      post seals_url,
           params: { seal: { country: @seal.country, county: @seal.county, date_of_birth: @seal.date_of_birth, first_name: @seal.first_name,
                             gender: @seal.gender, id_number: @seal.id_number, middle_name: @seal.middle_name, sir_name: @seal.sir_name } }
    end

    assert_redirected_to seal_url(Seal.last)
  end

  test 'should show seal' do
    get seal_url(@seal)
    assert_response :success
  end

  test 'should get edit' do
    get edit_seal_url(@seal)
    assert_response :success
  end

  test 'should update seal' do
    patch seal_url(@seal),
          params: { seal: { country: @seal.country, county: @seal.county, date_of_birth: @seal.date_of_birth, first_name: @seal.first_name,
                            gender: @seal.gender, id_number: @seal.id_number, middle_name: @seal.middle_name, sir_name: @seal.sir_name } }
    assert_redirected_to seal_url(@seal)
  end

  test 'should destroy seal' do
    assert_difference('Seal.count', -1) do
      delete seal_url(@seal)
    end

    assert_redirected_to seals_url
  end
end
