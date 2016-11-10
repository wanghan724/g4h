require 'test_helper'

class VOwnerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v_owner_profile = v_owner_profiles(:one)
  end

  test "should get index" do
    get v_owner_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_v_owner_profile_url
    assert_response :success
  end

  test "should create v_owner_profile" do
    assert_difference('VOwnerProfile.count') do
      post v_owner_profiles_url, params: { v_owner_profile: { about: @v_owner_profile.about, contact_number: @v_owner_profile.contact_number, email: @v_owner_profile.email, first_name: @v_owner_profile.first_name, last_name: @v_owner_profile.last_name } }
    end

    assert_redirected_to v_owner_profile_url(VOwnerProfile.last)
  end

  test "should show v_owner_profile" do
    get v_owner_profile_url(@v_owner_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_v_owner_profile_url(@v_owner_profile)
    assert_response :success
  end

  test "should update v_owner_profile" do
    patch v_owner_profile_url(@v_owner_profile), params: { v_owner_profile: { about: @v_owner_profile.about, contact_number: @v_owner_profile.contact_number, email: @v_owner_profile.email, first_name: @v_owner_profile.first_name, last_name: @v_owner_profile.last_name } }
    assert_redirected_to v_owner_profile_url(@v_owner_profile)
  end

  test "should destroy v_owner_profile" do
    assert_difference('VOwnerProfile.count', -1) do
      delete v_owner_profile_url(@v_owner_profile)
    end

    assert_redirected_to v_owner_profiles_url
  end
end
