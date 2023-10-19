# spec/controllers/tasks_controller_spec.rb

require "rails_helper"

RSpec.describe TasksController, type: :controller do
  describe "GET #index" do
    it "returns a successful response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns all tasks to @tasks" do
      task1 = Task.create(title: "Task 1", description: "Description 1")
      task2 = Task.create(title: "Task 2", description: "Description 2")

      get :index
      expect(assigns(:tasks)).to match_array([task1, task2])
    end

    # Add more examples to test different scenarios
  end
end
