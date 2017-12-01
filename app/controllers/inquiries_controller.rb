class InquiriesController < ApplicationController
  before_action :set_inquiry, only: [:show]

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)

    # json_serializeを呼びcolorカラムにjsonへ変換した各色を入れ@inquiryの値を更新する※この時点では各色の値は空の状態
    @inquiry.json_serialize

    if @inquiry.save
      redirect_to @inquiry
    else
      render :new
    end
  end

  def show
    # jsonからhashに戻す
    @answer = JSON.parse(@inquiry.color)
  end

  private

  def set_inquiry
    @inquiry = Inquiry.find(params[:id])
  end

  def inquiry_params
    params.require(:inquiry).permit(
      :color,
      :color_red,
      :color_blue,
      :color_yellow,
      :color_green,
      :color_orange,
      :color_pink,
      :color_white,
      :color_black
    )
  end
end
