require 'test_helper'

class PtProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pt_profile = pt_profiles(:one)
  end

  test "should get index" do
    get pt_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_pt_profile_url
    assert_response :success
  end

  test "should create pt_profile" do
    assert_difference('PtProfile.count') do
      post pt_profiles_url, params: { pt_profile: { about: @pt_profile.about, age: @pt_profile.age, contact_number: @pt_profile.contact_number, email: @pt_profile.email, first_name: @pt_profile.first_name, gender: @pt_profile.gender, last_name: @pt_profile.last_name, qualifications: @pt_profile.qualifications } }
    end

    assert_redirected_to pt_profile_url(PtProfile.last)
  end

  test "should show pt_profile" do
    get pt_profile_url(@pt_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_pt_profile_url(@pt_profile)
    assert_response :success
  end

  test "should update pt_profile" do
    patch pt_profile_url(@pt_profile), params: { pt_profile: { about: @pt_profile.about, age: @pt_profile.age, contact_number: @pt_profile.contact_number, email: @pt_profile.email, first_name: @pt_profile.first_name, gender: @pt_profile.gender, last_name: @pt_profile.last_name, qualifications: @pt_profile.qualifications } }
    assert_redirected_to pt_profile_url(@pt_profile)
  end

  test "should destroy pt_profile" do
    assert_difference('PtProfile.count', -1) do
      delete pt_profile_url(@pt_profile)
    end

    assert_redirected_to pt_profiles_url
  end
end
