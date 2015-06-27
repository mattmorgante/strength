require 'test_helper'

class WorkoutsControllerTest < ActionController::TestCase
  setup do
    @workout = workouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout" do
    assert_difference('Workout.count') do
      post :create, workout: { date: @workout.date, energy: @workout.energy, length: @workout.length, name: @workout.name, time_of_day: @workout.time_of_day }
    end

    assert_redirected_to workout_path(assigns(:workout))
  end

  test "should show workout" do
    get :show, id: @workout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout
    assert_response :success
  end

  test "should update workout" do
    patch :update, id: @workout, workout: { date: @workout.date, energy: @workout.energy, length: @workout.length, name: @workout.name, time_of_day: @workout.time_of_day }
    assert_redirected_to workout_path(assigns(:workout))
  end

  test "should destroy workout" do
    assert_difference('Workout.count', -1) do
      delete :destroy, id: @workout
    end

    assert_redirected_to workouts_path
  end
end
