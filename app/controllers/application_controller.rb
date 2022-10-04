class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  def serialize(objects)
    objects.to_json(
      only: [:id],
      include: {
        notes: {
          only: [
            :id,
            :title,
            :content
          ]
        }
      }
    )
  end

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # Return authors with associated notes.
  get "/authors" do
    authors = Author.all
    authors.to_json
  end

  get "/authors/:id" do
    serialize(Author.find(params[:id]))
  end

  post "/authors" do
    author = Author.create(name: params[:name])
    author.to_json
  end

  get "/notes" do
    notes = Note.all
    notes.to_json
  end

  post "/notes" do
    author = Author.where(name: params[:name]).first_or_create
    note = Note.create(
      title: params[:title],
      content: params[:content],
      author_id: params[:author_id]
    )
    note.to_json
  end

  patch "/notes/:id" do

  end

  delete "/notes/:id" do
    Note.delete(id: params[:id])
  end

end
