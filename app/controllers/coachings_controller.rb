class CoachingsController < ApplicationController
  def index
    @coachings = Coaching.all

    render("coaching_templates/index.html.erb")
  end

  def show
    @coaching = Coaching.find(params.fetch("id_to_display"))

    render("coaching_templates/show.html.erb")
  end

  def new_form
    @coaching = Coaching.new

    render("coaching_templates/new_form.html.erb")
  end

  def create_row
    @coaching = Coaching.new

    @coaching.improvement_plan_id = params.fetch("improvement_plan_id")
    @coaching.user_id = params.fetch("user_id")

    if @coaching.valid?
      @coaching.save

      redirect_back(:fallback_location => "/coachings", :notice => "Coaching created successfully.")
    else
      render("coaching_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @coaching = Coaching.find(params.fetch("prefill_with_id"))

    render("coaching_templates/edit_form.html.erb")
  end

  def update_row
    @coaching = Coaching.find(params.fetch("id_to_modify"))

    @coaching.improvement_plan_id = params.fetch("improvement_plan_id")
    @coaching.user_id = params.fetch("user_id")

    if @coaching.valid?
      @coaching.save

      redirect_to("/coachings/#{@coaching.id}", :notice => "Coaching updated successfully.")
    else
      render("coaching_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @coaching = Coaching.find(params.fetch("id_to_remove"))

    @coaching.destroy

    redirect_to("/coachings", :notice => "Coaching deleted successfully.")
  end
end
