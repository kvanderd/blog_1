post '/new_subject' do

   @new_subject = Subject.create(:subject => params[:subject])
   redirect '/'
end


