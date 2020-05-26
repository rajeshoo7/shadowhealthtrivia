require 'test_helper'

class AddQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_question = add_questions(:one)
  end

  test "should get index" do
    get add_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_add_question_url
    assert_response :success
  end

  test "should create add_question" do
    assert_difference('AddQuestion.count') do
      post add_questions_url, params: { add_question: { Option2: @add_question.Option2, Option3: @add_question.Option3, correctOption1: @add_question.correctOption1, question: @add_question.question } }
    end

    assert_redirected_to add_question_url(AddQuestion.last)
  end

  test "should show add_question" do
    get add_question_url(@add_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_question_url(@add_question)
    assert_response :success
  end

  test "should update add_question" do
    patch add_question_url(@add_question), params: { add_question: { Option2: @add_question.Option2, Option3: @add_question.Option3, correctOption1: @add_question.correctOption1, question: @add_question.question } }
    assert_redirected_to add_question_url(@add_question)
  end

  test "should destroy add_question" do
    assert_difference('AddQuestion.count', -1) do
      delete add_question_url(@add_question)
    end

    assert_redirected_to add_questions_url
  end
end
