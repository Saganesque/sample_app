require  'test_helper'
=begin
In the Rails Tutorial, we’ll follow the common convention of using the _path form except when doing redirects, where we’ll use the _url form. (This is because the HTTP standard technically requires a full URL after redirects, though in most browsers it will work either way.)
=end

#In addition to coming equipped with a large number of built-in functions for use in the views, Rails also allows the creation of new ones. Such functions are called helpers;

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
  get root_url
   assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get home" do
   get static_pages_home_url
   assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
      end

  test "should get Contact page" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end