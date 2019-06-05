Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "improvement_plans#index"
  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })
  get("/delete_comment_from_goal/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_goal" })
  get("/delete_comment_from_user/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_user" })
  get("/delete_comment_from_improvement_plan/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_improvement_plan" })

  #------------------------------

  # Routes for the Action resource:

  # CREATE
  get("/actions/new", { :controller => "actions", :action => "new_form" })
  post("/create_action", { :controller => "actions", :action => "create_row" })

  # READ
  get("/actions", { :controller => "actions", :action => "index" })
  get("/actions/:id_to_display", { :controller => "actions", :action => "show" })

  # UPDATE
  get("/actions/:prefill_with_id/edit", { :controller => "actions", :action => "edit_form" })
  post("/update_action/:id_to_modify", { :controller => "actions", :action => "update_row" })

  # DELETE
  get("/delete_action/:id_to_remove", { :controller => "actions", :action => "destroy_row" })
  get("/delete_action_from_goal/:id_to_remove", { :controller => "actions", :action => "destroy_row_from_goal" })

  #------------------------------

  # Routes for the Goal resource:

  # CREATE
  get("/goals/new", { :controller => "goals", :action => "new_form" })
  post("/create_goal", { :controller => "goals", :action => "create_row" })

  # READ
  get("/goals", { :controller => "goals", :action => "index" })
  get("/goals/:id_to_display", { :controller => "goals", :action => "show" })

  # UPDATE
  get("/goals/:prefill_with_id/edit", { :controller => "goals", :action => "edit_form" })
  post("/update_goal/:id_to_modify", { :controller => "goals", :action => "update_row" })

  # DELETE
  get("/delete_goal/:id_to_remove", { :controller => "goals", :action => "destroy_row" })
  get("/delete_goal_from_imprevement_plan/:id_to_remove", { :controller => "goals", :action => "destroy_row_from_imprevement_plan" })

  #------------------------------

  # Routes for the Status resource:

  # CREATE
  get("/statuses/new", { :controller => "statuses", :action => "new_form" })
  post("/create_status", { :controller => "statuses", :action => "create_row" })

  # READ
  get("/statuses", { :controller => "statuses", :action => "index" })
  get("/statuses/:id_to_display", { :controller => "statuses", :action => "show" })

  # UPDATE
  get("/statuses/:prefill_with_id/edit", { :controller => "statuses", :action => "edit_form" })
  post("/update_status/:id_to_modify", { :controller => "statuses", :action => "update_row" })

  # DELETE
  get("/delete_status/:id_to_remove", { :controller => "statuses", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # Routes for the Coaching resource:

  # CREATE
  get("/coachings/new", { :controller => "coachings", :action => "new_form" })
  post("/create_coaching", { :controller => "coachings", :action => "create_row" })

  # READ
  get("/coachings", { :controller => "coachings", :action => "index" })
  get("/coachings/:id_to_display", { :controller => "coachings", :action => "show" })

  # UPDATE
  get("/coachings/:prefill_with_id/edit", { :controller => "coachings", :action => "edit_form" })
  post("/update_coaching/:id_to_modify", { :controller => "coachings", :action => "update_row" })

  # DELETE
  get("/delete_coaching/:id_to_remove", { :controller => "coachings", :action => "destroy_row" })
  get("/delete_coaching_from_user/:id_to_remove", { :controller => "coachings", :action => "destroy_row_from_user" })
  get("/delete_coaching_from_implementation_plan/:id_to_remove", { :controller => "coachings", :action => "destroy_row_from_implementation_plan" })

  #------------------------------

  # Routes for the Improvement plan resource:

  # CREATE
  get("/improvement_plans/new", { :controller => "improvement_plans", :action => "new_form" })
  post("/create_improvement_plan", { :controller => "improvement_plans", :action => "create_row" })

  # READ
  get("/improvement_plans", { :controller => "improvement_plans", :action => "index" })
  get("/improvement_plans/:id_to_display", { :controller => "improvement_plans", :action => "show" })

  # UPDATE
  get("/improvement_plans/:prefill_with_id/edit", { :controller => "improvement_plans", :action => "edit_form" })
  post("/update_improvement_plan/:id_to_modify", { :controller => "improvement_plans", :action => "update_row" })

  # DELETE
  get("/delete_improvement_plan/:id_to_remove", { :controller => "improvement_plans", :action => "destroy_row" })
  get("/delete_improvement_plan_from_status/:id_to_remove", { :controller => "improvement_plans", :action => "destroy_row_from_status" })
  get("/delete_improvement_plan_from_user/:id_to_remove", { :controller => "improvement_plans", :action => "destroy_row_from_user" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
