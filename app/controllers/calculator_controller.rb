class CalculatorController < ApplicationController
  def index
  end

  def new
    @result = Calculator.send(:calculate, *[params[:year]])
    render :index
  end
end
