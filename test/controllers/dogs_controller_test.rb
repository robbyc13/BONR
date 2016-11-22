require 'test_helper'

class DogsControllerTest < ActionController::TestCase
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post :create, dog: { age: @dog.age, breed_id: @dog.breed_id, foster_family: @dog.foster_family, gender: @dog.gender, has_been_adopted: @dog.has_been_adopted, hot_dog: @dog.hot_dog, is_available: @dog.is_available, name: @dog.name, number_of_dislikes: @dog.number_of_dislikes, number_of_hotdogs: @dog.number_of_hotdogs, number_of_likes: @dog.number_of_likes, number_of_times_attempted_to_adopt: @dog.number_of_times_attempted_to_adopt, photo_link: @dog.photo_link, shelter_id: @dog.shelter_id, size: @dog.size, weight: @dog.weight }
    end

    assert_redirected_to dog_path(assigns(:dog))
  end

  test "should show dog" do
    get :show, id: @dog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dog
    assert_response :success
  end

  test "should update dog" do
    patch :update, id: @dog, dog: { age: @dog.age, breed_id: @dog.breed_id, foster_family: @dog.foster_family, gender: @dog.gender, has_been_adopted: @dog.has_been_adopted, hot_dog: @dog.hot_dog, is_available: @dog.is_available, name: @dog.name, number_of_dislikes: @dog.number_of_dislikes, number_of_hotdogs: @dog.number_of_hotdogs, number_of_likes: @dog.number_of_likes, number_of_times_attempted_to_adopt: @dog.number_of_times_attempted_to_adopt, photo_link: @dog.photo_link, shelter_id: @dog.shelter_id, size: @dog.size, weight: @dog.weight }
    assert_redirected_to dog_path(assigns(:dog))
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete :destroy, id: @dog
    end

    assert_redirected_to dogs_path
  end
end
