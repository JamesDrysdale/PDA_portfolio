### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # Needs to be a class method as follows: self.check_for_ace(card)
    if card.value = 1 # To check for equality == must be used rather than =
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # typo: dif should read def; the parameters must be seperated with a comma: (card1, card2). Method not properly indented
  if card1.value > card2.value
    return card # 'card' is undefined. This must read: return card1
  else
    return card2
  end
end
end # This end statement isn't needed here and will cause errors. It needs to be after the end statement on line 33 to close the class, which needs to contain the method below as well

def self.cards_total(cards) #This whole method should be indented
  total # We need to set an initial value here and to do so must use: total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total # This line of code needs to be underneath the end statement on line 32. As it is, it'll keep looping over itself and won't return a total card value
  end
end
```
