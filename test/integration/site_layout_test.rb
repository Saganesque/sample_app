require 'test_helper'

=begin
Our plan for testing the layout links involves checking the HTML structure of our site:

Get the root path (Home page).
Verify that the right page template is rendered.
Check for the correct links to the Home, Help, About, and Contact pages.
=end

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    get contact_path
    assert_select "title", full_title("Contact")
  end
end
