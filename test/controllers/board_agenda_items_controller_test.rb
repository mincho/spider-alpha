require 'test_helper'

class BoardAgendaItemsControllerTest < ActionController::TestCase
  setup do
    @board_agenda_item = board_agenda_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:board_agenda_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board_agenda_item" do
    assert_difference('BoardAgendaItem.count') do
      post :create, board_agenda_item: { board_id: @board_agenda_item.board_id, description: @board_agenda_item.description, position: @board_agenda_item.position, status: @board_agenda_item.status }
    end

    assert_redirected_to board_agenda_item_path(assigns(:board_agenda_item))
  end

  test "should show board_agenda_item" do
    get :show, id: @board_agenda_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @board_agenda_item
    assert_response :success
  end

  test "should update board_agenda_item" do
    patch :update, id: @board_agenda_item, board_agenda_item: { board_id: @board_agenda_item.board_id, description: @board_agenda_item.description, position: @board_agenda_item.position, status: @board_agenda_item.status }
    assert_redirected_to board_agenda_item_path(assigns(:board_agenda_item))
  end

  test "should destroy board_agenda_item" do
    assert_difference('BoardAgendaItem.count', -1) do
      delete :destroy, id: @board_agenda_item
    end

    assert_redirected_to board_agenda_items_path
  end
end
