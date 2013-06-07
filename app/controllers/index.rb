get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/posts' do 
  puts "I am in get"
  @all_posts = Post.all
  erb :index
end


post "/posts" do
    puts "I am in get"
  @new_post = Post.create(:title => params[:title], 
                          :body_content => params[:body_content], 
                          :tags => params[:tags],
                           :author => params[:author])
  @new_post
  redirect '/posts'
end



