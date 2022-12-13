require "application_system_test_case"

class AgendaRequestsTest < ApplicationSystemTestCase
  setup do
    @agenda_request = agenda_requests(:one)
  end

  test "visiting the index" do
    visit agenda_requests_url
    assert_selector "h1", text: "Agenda requests"
  end

  test "should create agenda request" do
    visit agenda_requests_url
    click_on "New agenda request"

    click_on "Create Agenda request"

    assert_text "Agenda request was successfully created"
    click_on "Back"
  end

  test "should update Agenda request" do
    visit agenda_request_url(@agenda_request)
    click_on "Edit this agenda request", match: :first

    click_on "Update Agenda request"

    assert_text "Agenda request was successfully updated"
    click_on "Back"
  end

  test "should destroy Agenda request" do
    visit agenda_request_url(@agenda_request)
    click_on "Destroy this agenda request", match: :first

    assert_text "Agenda request was successfully destroyed"
  end
end
