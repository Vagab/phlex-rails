# frozen_string_literal: true

class Helpers::RoutesView < ApplicationView
	def view_template
		a(href: adm_mpl_order_user_path(order_id: 10, id: 56)) { "Test Link" }
	end
end
