class DepositersController < ApplicationController
  def index
    load_depositers
  end

  def new
    new_depositer
  end

  def create
    build_depositer
    save_depositer or render 'new'
  end

  def show
    load_depositer
  end

  private

  def load_depositers
    @depositers ||= depositers_scope
  end

  def depositers_scope
    Depositer.all
  end

  def new_depositer
    @depositer ||= depositers_scope.new
  end

  def build_depositer
    new_depositer
    @depositer.attributes = depositer_params
  end

  def depositer_params
    params.require(:depositer).permit(:name, :mobile, :address, :about)
  end

  def save_depositer
    if @depositer.save
      redirect_to @depositer
    end
  end

  def load_depositer
    @depositer ||= depositers_scope.find params[:id]
  end
end
