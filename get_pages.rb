
#gem install fb_graph
require "fb_graph"
ACCESS_TOKEN = "CAACEdEose0cBALnfnUp0XsDyGBzW09nnpcHENRrId8vs9Pi4WHWtw2LsZC204Jmg7tMt9BXnjGKTRHnBvfHVP1io6NdOMbrVrtoHxeWAtkVvotGxJ4B5hdObyiqMinIkaatSn3zcwlvYGJYTyNdAuH6cGz8HzFlcVePM5GtQ6XyOEXJbyRh2iZBFCOGYcuYlQR0m7G9gZDZD"


@results = FbGraph::Page.search("maheshwari",:access_token => ACCESS_TOKEN)
p @results.count

# @results.each do |page|
#   p "Page name"
#   page.
#   p "Pages"


@results.each do |page|
 Page.create(name: "#{page.name}",fb_link: "#{page.link}",website: "#{page.website}",category: "#{page.category}")
end


@group_results = FbGraph::Group.search("maheshwari",:access_token => ACCESS_TOKEN)
@group_results.each do |page|
  Group.create(name: "#{page.name}",group_link: "#{page.endpoint}")
end

@user_results = FbGraph::User.search("bhattad",:access_token => ACCESS_TOKEN)

UserProfile.create(name: "#{user.name}", last_name: "#{user.last_name}", website: "#{user.website}", fb_link: "#{user.endpoint}", image: "#{user.picture}" ) 