class RobotDecorator

  attr_reader :id, :name, :city, :state, :department, :image

  def initialize(robot)
    @id          = robot.id if robot.id
    @name        = robot.name
    @city        = robot.city
    @state       = robot.state
    @department  = robot.department
    @image       = robot_list.sample
  end

  def headshot
    image
  end

  def robot_list
    ["img/image1.png", "img/image2.png", "img/image3.png",
              "img/image4.png", "img/image5.png", "img/image6.png",
              "img/image7.png", "img/image8.png", "img/image9.png",
              "img/image10.png", "img/image11.png", "img/image12.png",
              "img/image13.png", "img/image14.png", "img/image15.png"
    ]
  end
end
