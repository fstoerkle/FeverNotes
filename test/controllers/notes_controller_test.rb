require 'test_helper'
require 'pry'

class NotesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @user = users(:jane)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should fetch and show note" do
    get :show, { :id => notes(:note_two).id }
    assert_response :success
    assert_not_nil assigns(:note)
  end

end
