class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def index
    @people = Person.all
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect_to people_url
    else
      render :action => "new"
    end
  end

  def destroy
    if Person.destroy(params[:id])
      flash[:notice] = "Successfully confirmed the alert."
      redirect_to people_url
    else
      flash[:notice] = "There was a problem"
    end
  end
end
