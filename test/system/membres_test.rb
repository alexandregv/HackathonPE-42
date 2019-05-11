require "application_system_test_case"

class MembresTest < ApplicationSystemTestCase
  setup do
    @membre = membres(:one)
  end

  test "visiting the index" do
    visit membres_url
    assert_selector "h1", text: "Membres"
  end

  test "creating a Membre" do
    visit membres_url
    click_on "New Membre"

    fill_in "Age", with: @membre.age
    fill_in "Mail", with: @membre.mail
    fill_in "Nom", with: @membre.nom
    fill_in "Prenom", with: @membre.prenom
    click_on "Create Membre"

    assert_text "Membre was successfully created"
    click_on "Back"
  end

  test "updating a Membre" do
    visit membres_url
    click_on "Edit", match: :first

    fill_in "Age", with: @membre.age
    fill_in "Mail", with: @membre.mail
    fill_in "Nom", with: @membre.nom
    fill_in "Prenom", with: @membre.prenom
    click_on "Update Membre"

    assert_text "Membre was successfully updated"
    click_on "Back"
  end

  test "destroying a Membre" do
    visit membres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Membre was successfully destroyed"
  end
end
