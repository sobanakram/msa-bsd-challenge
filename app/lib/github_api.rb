require 'httparty'

class GithubApi
  @base_url = 'https://api.github.com/'

  def self.search_public_repos(query)
    repositories = []
    url = "#{@base_url}search/repositories?q=#{query}"
    response = HTTParty.get(url)
    json_response = JSON.parse(response.body)
    repositories = json_response['items'] if response.code == 200
    { repos: repositories, code: response.code, message: json_response['message'] }
  end
end