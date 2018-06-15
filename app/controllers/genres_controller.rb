class GenresController <ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(params[:id])
  end

  def edit
    @genre = Genre.new
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params(:name))
    redirect_to genre_path(params[:id])
  end

  private

  def genre_params(*args)
    params.require(:artist).permit(*args)
  end
end
