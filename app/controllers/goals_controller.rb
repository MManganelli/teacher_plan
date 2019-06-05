class GoalsController < ApplicationController
  def index
    @q = Goal.ransack(params[:q])
    @goals = @q.result(:distinct => true).includes(:imprevement_plan, :actions, :comments).page(params[:page]).per(10)

    render("goal_templates/index.html.erb")
  end

  def show
    @comment = Comment.new
    @action = Action.new
    @goal = Goal.find(params.fetch("id_to_display"))

    render("goal_templates/show.html.erb")
  end

  def new_form
    @goal = Goal.new

    render("goal_templates/new_form.html.erb")
  end

  def create_row
    @goal = Goal.new

    @goal.user_id = params.fetch("user_id")
    @goal.description = params.fetch("description")
    @goal.imprevement_plan_id = params.fetch("imprevement_plan_id")

    if @goal.valid?
      @goal.save

      redirect_back(:fallback_location => "/goals", :notice => "Goal created successfully.")
    else
      render("goal_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_improvement_plan
    @goal = Goal.new

    @goal.user_id = params.fetch("user_id")
    @goal.description = params.fetch("description")
    @goal.imprevement_plan_id = params.fetch("imprevement_plan_id")

    if @goal.valid?
      @goal.save

      redirect_to("/improvement_plans/#{@goal.imprevement_plan_id}", notice: "Goal created successfully.")
    else
      render("goal_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @goal = Goal.find(params.fetch("prefill_with_id"))

    render("goal_templates/edit_form.html.erb")
  end

  def update_row
    @goal = Goal.find(params.fetch("id_to_modify"))

    @goal.user_id = params.fetch("user_id")
    @goal.description = params.fetch("description")
    @goal.imprevement_plan_id = params.fetch("imprevement_plan_id")

    if @goal.valid?
      @goal.save

      redirect_to("/goals/#{@goal.id}", :notice => "Goal updated successfully.")
    else
      render("goal_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_imprevement_plan
    @goal = Goal.find(params.fetch("id_to_remove"))

    @goal.destroy

    redirect_to("/improvement_plans/#{@goal.imprevement_plan_id}", notice: "Goal deleted successfully.")
  end

  def destroy_row
    @goal = Goal.find(params.fetch("id_to_remove"))

    @goal.destroy

    redirect_to("/goals", :notice => "Goal deleted successfully.")
  end
end
