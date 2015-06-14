# app/recipes/deploy.rb
#
# Cookbook Name:: app
# Recipe:: deploy
#
opsworks_play2 do
  app "app"
  deploy_data node[:deploy][:app] # This data comes from OpsWorks' JSON blob
end
