require "application_system_test_case"

class PeepsTest < ApplicationSystemTestCase
  setup do
    @peep = peeps(:one)
  end

  test "visiting the index" do
    visit peeps_url
    assert_selector "h1", text: "Peeps"
  end

  test "creating a Peep" do
    visit peeps_url
    click_on "New Peep"

    fill_in "Chirp", with: @peep.chirp
    click_on "Create Peep"

    assert_text "Peep was successfully created"
    click_on "Back"
  end

  test "updating a Peep" do
    visit peeps_url
    click_on "Edit", match: :first

    fill_in "Chirp", with: @peep.chirp
    click_on "Update Peep"

    assert_text "Peep was successfully updated"
    click_on "Back"
  end

  test "destroying a Peep" do
    visit peeps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Peep was successfully destroyed"
  end
end
