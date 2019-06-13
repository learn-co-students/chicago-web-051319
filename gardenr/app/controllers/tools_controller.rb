class ToolsController < ApplicationController
  before_action :find_tool, only: [:show, :edit, :update]

  def index
    @tools = Tool.all
  end

  def show
    # find_tool
  end

  def new
    @users = User.all
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)

    if @tool.save
      redirect_to tools_path
    else
      @errors = @tool.errors.full_messages
      render :new
    end
  end

  def edit
    @users = User.all
    # find_tool
  end

  def update
    # @tool has been set by our before action
    @tool.assign_attributes(tool_params)

    if @tool.save
      redirect_to tool_path(@tool)
    else
      @errors = @tool.errors.full_messages
      render :edit
    end
  end

  private

  def find_tool
    @tool = Tool.find_by(id: params[:id])
  end

  def tool_params
    params.require(:tool).permit(:name, :condition, :user_id)
  end
end
