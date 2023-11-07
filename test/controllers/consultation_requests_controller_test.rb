require "test_helper"

class ConsultationRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get consultation_requests_create_url
    assert_response :success
  end
end
