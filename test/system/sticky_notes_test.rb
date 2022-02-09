require "application_system_test_case"

class StickyNotesTest < ApplicationSystemTestCase
  setup do
    @sticky_note = sticky_notes(:one)
  end

  test "visiting the index" do
    visit sticky_notes_url
    assert_selector "h1", text: "Sticky Notes"
  end

  test "creating a Sticky note" do
    visit sticky_notes_url
    click_on "New Sticky Note"

    fill_in "Body", with: @sticky_note.body
    fill_in "Title", with: @sticky_note.title
    click_on "Create Sticky note"

    assert_text "Sticky note was successfully created"
    click_on "Back"
  end

  test "updating a Sticky note" do
    visit sticky_notes_url
    click_on "Edit", match: :first

    fill_in "Body", with: @sticky_note.body
    fill_in "Title", with: @sticky_note.title
    click_on "Update Sticky note"

    assert_text "Sticky note was successfully updated"
    click_on "Back"
  end

  test "destroying a Sticky note" do
    visit sticky_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sticky note was successfully destroyed"
  end
end
