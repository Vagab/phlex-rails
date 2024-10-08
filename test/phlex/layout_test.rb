# frozen_string_literal: true

require "test_helper"

class LayoutTest < ActionDispatch::IntegrationTest
	test "with erb view" do
		get "/layout/with_erb_view"
		assert_response :success
		assert_select "body.bg-blue"
		assert_select "link[rel=stylesheet][data-turbo-track=reload]"
		assert_select "title", "ERB View"
		assert_select "h1", "Hello from ERB"
	end

	test "with phlex view" do
		get "/layout/with_phlex_view"
		assert_response :success
		assert_select "link[rel=stylesheet][data-turbo-track=reload]"
		assert_select "title", "Phlex View"
		assert_select "h1", "Hello from Phlex"
		assert_select "#erb"
	end
end
