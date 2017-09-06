class BoundingArea
  attr_reader :bounding_box_array

  def initialize(bounding_box_array)
    @bounding_box_array = bounding_box_array
  end

  def boxes_contain_point?(x_coordinate, y_coordinate)
    hovering = false
    if @bounding_box_array.nil?
      nil
    else
      @bounding_box_array.each do |bounding_box|
        if x_coordinate >= bounding_box.left && x_coordinate <= bounding_box.right && y_coordinate >= bounding_box.bottom && y_coordinate <= bounding_box.top
          hovering = true
        else
          nil
        end
      end
    end
    hovering
  end
end
