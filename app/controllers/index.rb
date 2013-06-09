get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/posts' do 
  @all_posts = Post.all
  erb :show_all
end


post '/posts' do
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

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit_post
end

post '/posts/update' do
  @post = Post.find(params[:id])
  @post.update_attributes({title: params[:title], 
                          body_content: params[:body_content]})
  redirect "posts/#{@post.id}"
end


get '/posts/:id/delete' do
  puts "I am here"
  Post.find(params[:id]).destroy
  
  redirect '/'
end


