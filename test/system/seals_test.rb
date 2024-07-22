require 'application_system_test_case'

class SealsTest < ApplicationSystemTestCase
  setup do
    @seal = seals(:one)
  end

  test 'visiting the index' do
    visit seals_url
    assert_selector 'h1', text: 'Seals'
  end

  test 'should create seal' do
    visit seals_url
    click_on 'New seal'

    fill_in 'Country', with: @seal.country
    fill_in 'County', with: @seal.county
    fill_in 'Date of birth', with: @seal.date_of_birth
    fill_in 'First name', with: @seal.first_name
    fill_in 'Gender', with: @seal.gender
    fill_in 'Id number', with: @seal.id_number
    fill_in 'Middle name', with: @seal.middle_name
    fill_in 'Sir name', with: @seal.sir_name
    click_on 'Create Seal'

    assert_text 'Seal was successfully created'
    click_on 'Back'
  end

  test 'should update Seal' do
    visit seal_url(@seal)
    click_on 'Edit this seal', match: :first

    fill_in 'Country', with: @seal.country
    fill_in 'County', with: @seal.county
    fill_in 'Date of birth', with: @seal.date_of_birth
    fill_in 'First name', with: @seal.first_name
    fill_in 'Gender', with: @seal.gender
    fill_in 'Id number', with: @seal.id_number
    fill_in 'Middle name', with: @seal.middle_name
    fill_in 'Sir name', with: @seal.sir_name
    click_on 'Update Seal'

    assert_text 'Seal was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Seal' do
    visit seal_url(@seal)
    click_on 'Destroy this seal', match: :first

    assert_text 'Seal was successfully destroyed'
  end
end
