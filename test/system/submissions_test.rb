require "application_system_test_case"

class SubmissionsTest < ApplicationSystemTestCase
  setup do
    @submission = submissions(:one)
  end
  test "visiting the index" do
    visit submissions_url

    assert_selector "h1", text: "Submissions"
  end

  test "creating a Submission" do
    visit submissions_url
    click_on "New Submission"

    fill_in "Title", with: @submission.title
    fill_in "Body", with: @submission.body
    click_on "Create Submission"

    assert_text "Submission was succesfully created"
  end

  test "updating a Submission" do
    visit submissions_url
    click_on "Edit", match: :first

    fill_in "Title", with: @submission.title
    fill_in "Body", with: @submission.body

    click_on "Update Submission"

    assert_text "Submission was successfully updated"
  end

  test "destroying a submission" do
    visit submissions_url

    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Submission was successfully destroyed"
  end
end
