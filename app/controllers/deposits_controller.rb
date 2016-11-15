class DepositsController < ApplicationController
  def index
    load_deposits
  end

  def new
    new_deposit
  end

  def create
    build_deposit
    save_deposit or render 'new'
  end

  def show
    load_deposit
  end

  private

  def load_deposits
    @deposits ||= deposit_scope.includes(:depositer, :interest_type).order("deposited_on desc")
  end

  def new_deposit
    @deposit ||= deposit_scope.new(interest_type: InterestType.find_by_name(Deposit::DEFAULT_SELECTION[:interest_type]),
                                   interest_percent: InterestPercent.find_by_number(Deposit::DEFAULT_SELECTION[:interest_percent]))
  end

  def build_deposit
    new_deposit
    @deposit.attributes = deposit_params
  end

  def save_deposit
    if @deposit.save
      redirect_to @deposit
    end
  end

  def load_deposit
    @deposit ||= deposit_scope.find params[:id]
  end

  def deposit_params
    params.require(:deposit).permit(:amount, :deposited_on, :interest_type_id, :interest_percent_id, :depositer_id)
  end

  def deposit_scope
    Deposit.all
  end
end
