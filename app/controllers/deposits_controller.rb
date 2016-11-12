class DepositsController < ApplicationController
  def index
    load_deposits
  end

  private

  def load_deposits
    @deposits = Deposit.all
  end
end
