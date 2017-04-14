require 'test_helper'


#In addition to coming equipped with a large number of built-in functions for use in the views, Rails also allows the creation of new ones. Such functions are called helpers;

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
   //get root_url
    get root_path
   assert_response :success
    assert_select "title", "#{@base_title}"
  end
  test "should get home" do
   //get static_pages_home_url
    get static_pages_home_path
   assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
  //  get static_pages_help_url
   get static_pages_home_path
  assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
 //   get static_pages_about_url
    get static_pages_home_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
      end

  test "should get Contact page" do
    //get static_pages_contact_url
    get static_pages_home_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
