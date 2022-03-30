require "test_helper"

class PublicStickyNotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_sticky_notes_index_url
    assert_response :success
  end
end
