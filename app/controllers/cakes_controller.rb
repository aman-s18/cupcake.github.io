class CakesController < ApplicationController
   http_basic_authenticate_with name: "cupcake", password: "cupcake", except: [:index, :show, :new]

def new
	@cake = Cake.new
end
def index
	@cakes = Cake.all
	
end



def create
  @cake = Cake.new(cake_params)
 
 if @cake.save
  redirect_to @cake
else
	render 'new'
end
end
def edit
  @cake = Cake.find(params[:id])
end
def update
  @cake = Cake.find(params[:id])
 
  if @cake.update(cake_params)
    redirect_to @cake
  else
    render 'edit'
  end
end
def destroy
  @cake = Cake.find(params[:id])
  @cake.destroy
 
  redirect_to cakes_path
end

 def show
    @cake = Cake.find(params[:id])
  end
end
 
private
  def cake_params
    params.require(:cake).permit(:title, :text)
  end