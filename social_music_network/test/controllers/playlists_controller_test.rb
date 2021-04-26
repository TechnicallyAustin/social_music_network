require 'test_helper'

class PlaylistsControllerTest < ActionDispatch::IntegrationTest
  test "should get skip-test-framework" do
    get playlists_skip-test-framework_url
    assert_response :success
  end

end
