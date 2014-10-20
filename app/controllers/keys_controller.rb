class KeysController < ApplicationController
  respond_to :html

  def index
  end

  def show
    @key = Key.find(params[:id])
  end

  def new
    @key = Key.new
  end

  def create
    @key = Key.new(key_params)
    if @key.save
      redirect_to @key, notice: 'Key created.'
    else
      render :new
    end
  end

  def find
    find_params  = { ctrl: params[:ctrl] == 'T', shift: params[:shift] == 'T' }
    find_params.merge!({ alt: params[:alt] == 'T', code: params[:code] })
    @key = Key.find_by(find_params)
    respond_with @key
  end

  private

  def key_params
    params.require(:key).permit(:ctrl, :alt, :shift, :code, :meaning)
  end
end
