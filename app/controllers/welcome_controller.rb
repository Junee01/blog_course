class WelcomeController < ApplicationController

	def index
		#최근 3개만 발행 순서로 표시
		@posts = Post.all.limit(3).order("created_at desc")
		@projects = Project.all.limit(3).order("created_at desc")
	end
end
