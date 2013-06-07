get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/posts' do 
  puts "I am in get"
  @all_posts = Post.all
  erb :show_all
end


post '/posts' do
  puts "I am in post"
  @new_post = Post.create(:title => params[:title], 
                          :body_content => params[:body_content], 
                           :author => params[:author])
  redirect '/posts' 
end

get '/posts/:id' do
   @post = Post.find(params[:id])
   #find method defualts to finding by id. If you want to find by
   #email, find_by_email

erb :show_post
end



