defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck retains the same amount of cards and randomizes the deck" do
    deck = Cards.create_deck
    shuffled_deck = Cards.shuffle(deck)
    assert length(shuffled_deck) == 20
    refute deck == shuffled_deck
  end

end
