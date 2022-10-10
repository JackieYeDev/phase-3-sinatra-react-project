class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  def serialize(objects)
    objects.to_json(
      only: [:id, :name],
      include: {
        notes: {
          only: [
            :id,
            :author_id,
            :title,
            :content
          ]
        }
      }
    )
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

  get "/notes/:id" do
    note = Note.find(params[:id])
    note.to_json
  end

  post "/notes" do
    note = Note.create(
      title: params[:title],
      content: params[:content],
      author_id: params[:author_id]
    )
    note.to_json
  end

  patch "/notes/:id" do
    note = Note.find(params[:id])
    note.update(
      title: params[:title],
      content: params[:content]
    )
    note.to_json
  end

  delete "/authors/:id" do
    author = Author.find(params[:id])
    author.destroy
    author.to_json
  end

  delete "/notes/:id" do
    note = Note.find(params[:id])
    note.destroy
    note.to_json
  end

end
