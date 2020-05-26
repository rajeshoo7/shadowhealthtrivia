require "application_system_test_case"

class AddQuestionsTest < ApplicationSystemTestCase
  setup do
    @add_question = add_questions(:one)
  end

  test "visiting the index" do
    visit add_questions_url
    assert_selector "h1", text: "Add Questions"
  end

  test "creating a Add question" do
    visit add_questions_url
    click_on "New Add Question"

    fill_in "Option2", with: @add_question.Option2
    fill_in "Option3", with: @add_question.Option3
    fill_in "Correctoption1", with: @add_question.correctOption1
    fill_in "Question", with: @add_question.question
    click_on "Create Add question"

    assert_text "Add question was successfully created"
    click_on "Back"
  end

  test "updating a Add question" do
    visit add_questions_url
    click_on "Edit", match: :first

    fill_in "Option2", with: @add_question.Option2
    fill_in "Option3", with: @add_question.Option3
    fill_in "Correctoption1", with: @add_question.correctOption1
    fill_in "Question", with: @add_question.question
    click_on "Update Add question"

    assert_text "Add question was successfully updated"
    click_on "Back"
  end

  test "destroying a Add question" do
    visit add_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add question was successfully destroyed"
  end
end
