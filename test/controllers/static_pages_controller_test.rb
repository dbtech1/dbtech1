require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  dbtech1 = "dbtech1"
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{dbtech1}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{dbtech1}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{dbtech1}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{dbtech1}"
  end

end
