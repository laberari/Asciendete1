require "application_system_test_case"

class TrabajosTest < ApplicationSystemTestCase
  setup do
    @trabajo = trabajos(:one)
  end

  test "visiting the index" do
    visit trabajos_url
    assert_selector "h1", text: "Trabajos"
  end

  test "should create trabajo" do
    visit trabajos_url
    click_on "New trabajo"

    fill_in "Description", with: @trabajo.description
    fill_in "Name", with: @trabajo.name
    fill_in "User", with: @trabajo.user_id
    click_on "Create Trabajo"

    assert_text "Trabajo was successfully created"
    click_on "Back"
  end

  test "should update Trabajo" do
    visit trabajo_url(@trabajo)
    click_on "Edit this trabajo", match: :first

    fill_in "Description", with: @trabajo.description
    fill_in "Name", with: @trabajo.name
    fill_in "User", with: @trabajo.user_id
    click_on "Update Trabajo"

    assert_text "Trabajo was successfully updated"
    click_on "Back"
  end

  test "should destroy Trabajo" do
    visit trabajo_url(@trabajo)
    click_on "Destroy this trabajo", match: :first

    assert_text "Trabajo was successfully destroyed"
  end
end
