require "application_system_test_case"

class RepsTest < ApplicationSystemTestCase
  setup do
    @rep = reps(:one)
  end

  test "visiting the index" do
    visit reps_url
    assert_selector "h1", text: "Reps"
  end

  test "should create rep" do
    visit reps_url
    click_on "New rep"

    fill_in "Apc", with: @rep.apc
    fill_in "Invalidvote", with: @rep.invalidvote
    fill_in "Lp", with: @rep.lp
    fill_in "Nnpp", with: @rep.nnpp
    fill_in "Others", with: @rep.others
    fill_in "Pdp", with: @rep.pdp
    fill_in "Pic", with: @rep.pic
    fill_in "Prp", with: @rep.prp
    fill_in "Punit", with: @rep.punit
    fill_in "Totalreg", with: @rep.totalreg
    fill_in "User", with: @rep.user_id
    fill_in "Validvote", with: @rep.validvote
    fill_in "Ward", with: @rep.ward
    fill_in "Zlp", with: @rep.zlp
    click_on "Create Rep"

    assert_text "Rep was successfully created"
    click_on "Back"
  end

  test "should update Rep" do
    visit rep_url(@rep)
    click_on "Edit this rep", match: :first

    fill_in "Apc", with: @rep.apc
    fill_in "Invalidvote", with: @rep.invalidvote
    fill_in "Lp", with: @rep.lp
    fill_in "Nnpp", with: @rep.nnpp
    fill_in "Others", with: @rep.others
    fill_in "Pdp", with: @rep.pdp
    fill_in "Pic", with: @rep.pic
    fill_in "Prp", with: @rep.prp
    fill_in "Punit", with: @rep.punit
    fill_in "Totalreg", with: @rep.totalreg
    fill_in "User", with: @rep.user_id
    fill_in "Validvote", with: @rep.validvote
    fill_in "Ward", with: @rep.ward
    fill_in "Zlp", with: @rep.zlp
    click_on "Update Rep"

    assert_text "Rep was successfully updated"
    click_on "Back"
  end

  test "should destroy Rep" do
    visit rep_url(@rep)
    click_on "Destroy this rep", match: :first

    assert_text "Rep was successfully destroyed"
  end
end
