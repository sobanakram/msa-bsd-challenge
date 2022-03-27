class ReposController < ApplicationController

  def index
    @result = GithubApi.search_public_repos(params[:query])
  end
end