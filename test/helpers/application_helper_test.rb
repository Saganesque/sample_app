require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do

=begin
       I'm totally unsure these two tests are right. They work, but maybe the actual values that are in quotes should be code instead of strings.
=end

    assert_equal full_title,   "Ruby on Rails Tutorial Sample App"
    assert_equal full_title("Help"),   "Help | Ruby on Rails Tutorial Sample App"

  end
end