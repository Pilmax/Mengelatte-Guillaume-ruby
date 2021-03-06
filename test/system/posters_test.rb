require "application_system_test_case"

class PostersTest < ApplicationSystemTestCase
  setup do
    @poster = posters(:one)
  end

  test "visiting the index" do
    visit posters_url
    assert_selector "h1", text: "Posters"
  end

  test "creating a Poster" do
    visit posters_url
    click_on "New Poster"

    fill_in "Author", with: @poster.author
    fill_in "First name", with: @poster.first_name
    fill_in "Last name", with: @poster.last_name
    fill_in "Picture", with: @poster.picture
    fill_in "Title", with: @poster.title
    click_on "Create Poster"

    assert_text "Poster was successfully created"
    click_on "Back"
  end

  test "updating a Poster" do
    visit posters_url
    click_on "Edit", match: :first

    fill_in "Author", with: @poster.author
    fill_in "First name", with: @poster.first_name
    fill_in "Last name", with: @poster.last_name
    fill_in "Picture", with: @poster.picture
    fill_in "Title", with: @poster.title
    click_on "Update Poster"

    assert_text "Poster was successfully updated"
    click_on "Back"
  end

  test "destroying a Poster" do
    visit posters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poster was successfully destroyed"
  end
end
