class Inquiry < ApplicationRecord
  attr_accessor :color_red,
                :color_blue,
                :color_yellow,
                :color_green,
                :color_orange,
                :color_pink,
                :color_white,
                :color_black


  def json_serialize
    # colorにjson化した各色を入れる
    self.color = { 
      color_red: color_red,
      color_blue: color_blue,
      color_yellow: color_yellow,
      color_green: color_green,
      color_orange: color_orange,
      color_pink: color_pink,
      color_white: color_white,
      color_black: color_black
    }.to_json
  end


  # def json_parse_edit
  #   # jsonからhashへ
  #   color = JSON.parse(self.color)
  #   self.color_red = color["color_red"]
  #   self.color_blue = color["color_blue"]
  #   self.color_yellow = color["color_yellow"]
  #   self.color_green = color["color_green"]
  #   self.color_orange = color["color_orange"]
  #   self.color_pink = color["color_pink"]
  #   self.color_white = color["color_white"]
  #   self.color_black = color["color_black"]
  # end

  # def json_serialize_for_update(params)
  #   # 再度to_jsonでjson化させる
  #   self.color = { 
  #     color_red: params[:color]["color_red"],
  #     color_blue: params[:color]["color_blue"],
  #     color_yellow: params[:color]["color_yellow"],
  #     color_green: params[:color]["color_green"],
  #     color_orange: params[:color]["color_orange"],
  #     color_pink: params[:color]["color_pink"],
  #     color_white: params[:color]["color_white"],
  #     color_black: params[:color]["color_black"]
  #   }.to_json
  # end
end
