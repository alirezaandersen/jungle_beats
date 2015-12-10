require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require_relative 'junglebeats'
require_relative 'node'


class JungleBeatsTest < Minitest::Test
  def test_append_an_node_to_the_end_of_the_list
    list = List_Beats.new("bang")
    list.append("ma chow")
    assert_equal "bang ma chow", list.all
  end

  def test_prepend_an_node_at_the_begining_of_the_list_
    list = List_Beats.new("bang")
    list.prepend("ma chow")
    assert_equal "ma chow bang", list.all
  end

  def test_insert_one_or_more_nodes_at_an_abritarty_position_in_the_list
    list = List_Beats.new("bang")
    assert list.insert(0,"ma chow knee")
  end

  def test_returns_nil_for_invalid_sound_with_new_object
    skip
    list = List_Beats.new("SomeInvalidSound")
    assert_equal nil, list
  end

  def test_returns_true_for_include?
    skip
    list = List_Beats.new("bang")
    assert list.include?("bang")
  end

  def test_returns_false_for_include?
    skip
    list = List_Beats.new("bang")
    refute list.include?("boom")
  end

  def test_pop_3_beats_from_link
    skip
    list = List_Beats.new("bang")
    list.append("boom boom la chi dop dop de")
    assert_equal "boom la chi",list.pop(3)
  end

  def test_count_keeps_track_of_current_size_of_node
    skip
    list = List_Beats.new("bang")
    list.append("bang boom la")
    list.prepend("chi ni ma ding")
    assert_equal 8, list.count
  end


  def test_returns_all_elements_in_the_linked_list
    skip
    list = List_Beats.new("bang")
    list.append("bang boom la")
    list.prepend("chi ni ma ding")
    assert_equal "chi ni ma ding bang bang boom la", list.all
  end

  def test_resets_to_orginal_voice_speed
    skip
    list = List_Beats.new("bang")
    assert_equal 500, list.reset_speed
  end

  def test_allows_to_set_custom_voice_speed
    skip
    list = List_Beats.new("bang")
    list.speed(100)
    assert_equal 100, list.speed
  end

  def test_returns_voice_to_defult_Boing_
    skip
    list = List_Beats.new("bang")
    assert_equal 'Boing', list.reset_voice
  end

  def test_allows_to_set_custom_voice
    skip
    list = List_Beats.new("bang")
    list.set_voice("Alice")
    assert_equal "Alice", list.voice
  end

  def test_find_number_of_specific_words_in_link
    skip
    list = List_Beats.new("bang")
    list.append("lo chow madar")
    list.prepend("deep dep")
    assert_equal 1, list.find("chow madar")
  end

  def test_allows_for_capitalize_or_upcase_words
    skip
    list = List_Beats.new("BANG")
    assert_equal 1, list.count
  end

  def test_refutes_non_authorized_words
    skip
    list = List_Beats.new("bang junk junk junk")
    assert_equal 1, list.count
  end

  def test_node_equals_nil
    skip
    node = Node.new("Hello")
    assert_equal nil, node
  end

  def test_if_only_one_link_refute_insert_5
    skip
    list = List_Beats.new("bang")
    refute list.insert(5,"ma")
  end
end