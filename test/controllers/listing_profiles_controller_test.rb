require 'test_helper'

class ListingProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing_profile = listing_profiles(:one)
  end

  test "should get index" do
    get listing_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_profile_url
    assert_response :success
  end

  test "should create listing_profile" do
    assert_difference('ListingProfile.count') do
      post listing_profiles_url, params: { listing_profile: { Peak_price: @listing_profile.Peak_price, address: @listing_profile.address, amenities: @listing_profile.amenities, area: @listing_profile.area, description: @listing_profile.description, directions_and_parking: @listing_profile.directions_and_parking, name: @listing_profile.name, number_of_people: @listing_profile.number_of_people, off_peak_price: @listing_profile.off_peak_price, photos: @listing_profile.photos, terms_and_conditions: @listing_profile.terms_and_conditions } }
    end

    assert_redirected_to listing_profile_url(ListingProfile.last)
  end

  test "should show listing_profile" do
    get listing_profile_url(@listing_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_profile_url(@listing_profile)
    assert_response :success
  end

  test "should update listing_profile" do
    patch listing_profile_url(@listing_profile), params: { listing_profile: { Peak_price: @listing_profile.Peak_price, address: @listing_profile.address, amenities: @listing_profile.amenities, area: @listing_profile.area, description: @listing_profile.description, directions_and_parking: @listing_profile.directions_and_parking, name: @listing_profile.name, number_of_people: @listing_profile.number_of_people, off_peak_price: @listing_profile.off_peak_price, photos: @listing_profile.photos, terms_and_conditions: @listing_profile.terms_and_conditions } }
    assert_redirected_to listing_profile_url(@listing_profile)
  end

  test "should destroy listing_profile" do
    assert_difference('ListingProfile.count', -1) do
      delete listing_profile_url(@listing_profile)
    end

    assert_redirected_to listing_profiles_url
  end
end
