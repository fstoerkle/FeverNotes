
require 'redcarpet'
require 'sinatra'

html_renderer = Redcarpet::Render::HTML.new(:filter_html => true)
renderer = Redcarpet::Markdown.new(html_renderer, :autolink => true)

get '/render' do
  renderer.render(params[:markdown]) unless params[:markdown].nil?
end

get '/' do
  send_file File.expand_path('index.html', settings.public_folder)
end