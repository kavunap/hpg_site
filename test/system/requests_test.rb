require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    visit requests_url
    click_on "New Request"

    fill_in "Card name", with: @request.card_name
    fill_in "Sender address", with: @request.sender_address
    fill_in "Sender email", with: @request.sender_email
    fill_in "Sender name", with: @request.sender_name
    fill_in "Sender phone", with: @request.sender_phone
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    visit requests_url
    click_on "Edit", match: :first

    fill_in "Card name", with: @request.card_name
    fill_in "Sender address", with: @request.sender_address
    fill_in "Sender email", with: @request.sender_email
    fill_in "Sender name", with: @request.sender_name
    fill_in "Sender phone", with: @request.sender_phone
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end
