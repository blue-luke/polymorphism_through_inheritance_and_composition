# Polymorphism, Inheritance and Composition

> "Designing object-oriented software is hard, and designing reusable object-oriented software is even harder."
> – Design Patterns: Elements of Reusable Object-Oriented Software

Polymorphism, inheritance and composition - what are they, and where should I use them?

## Learning Objectives

- Know that inheritance cascades methods from a superclass
- Explain how method implementations can be overridden in a subclass
- Use composition as an alternative to inheritance

## Intro
The code snippet below includes three simple ruby classes which share very similar behaviour - a clear violation of the DRY principle.

```ruby
class Car
  attr_reader :top_speed

  def initialize(top_speed)
    @top_speed = top_speed
  end

  def move
    "moving at #{top_speed}"
  end
end

class Bike
  attr_reader :top_speed

  def initialize(top_speed)
    @top_speed = top_speed
  end

  def move
    "moving at #{top_speed}"
  end
end

class Plane
  attr_reader :top_speed

  def initialize(top_speed)
    @top_speed = top_speed
  end

  def move
    "taking off... moving at #{top_speed}"
  end
end
```

One way of dealing with this repetition is through the use of inheritance:

```ruby
class Vehicle
  attr_reader :top_speed

  def initialize(top_speed)
    @top_speed = top_speed
  end

  def move
    "moving at #{top_speed}"
  end
end

class Car < Vehicle
end

class Bike < Vehicle
end

class Plane < Vehicle
  def move
    "taking off... moving at #{top_speed}"
  end
end
```

We create a superclass (Vehicle) which defines the shared behaviours, and then make our other classes subclasses which inherit these behaviours.  This provides our subclasses with *all* of the behaviours of a vehicle.  As the plane class implements the move method differently, we override it with the desired behaviour.

## Exercise 1
- Refactor the code base to DRY up repetition by implementing inheritance.  
- You should not need to modify the existing unit tests, and they should all still pass once you're done.

## Mini-Plenary

Be aware that setting up this kind of hierarchical relationship between objects implies that the subclass __'is a'__ subtype of the base class, otherwise we can arrive at some strange situations.  For example, we might want to create a Person class - a person, like a vehicle, can move but...

 ```ruby
 class Person < Vehicle
 end
 ```  

...is clearly a poor design decision.

This looks much improved, but **beware**!  Inheritance sets up a tightly coupled relationship between classes - the subclass will inherit **all** of the base class' public interface, whether you want it to or not.

```ruby
class Vehicle
  attr_reader :top_speed

  def initialize(top_speed)
    @top_speed = top_speed
  end

  def move
    "moving at #{top_speed}"
  end

  def start_engine
    "vroooom!!"
  end
end

bike = Bike.new
bike.start_engine => "vroooom!!"
```

We can overcome this problem through the use of composition.  

```ruby
class Engine
  def start
    "vroooom!"
  end
end

class Car < Vehicle
  attr_reader :engine

  def initialize(top_speed, engine = Engine.new)
    super(top_speed)
    @engine = engine
  end

  def start_engine
    engine.start
  end
end
```

Here we create a new class - Engine - and pass in an instance of it into a Car object as part of its initialise method.  This pattern allows us to share the behaviour of the engine class with other classes as we see fit - we need only include it where necessary.

We can achieve the same effect through the use of modules:

```ruby
module Engine
  def start
    "vroooom!"
  end
end

class Car
  include Engine
end
```

### Exercise 2
- Now that you've dealt with the repetition, its time to introduce some new functionality.  Books and articles should both hold information on their authors (Newspapers should not include this functionality, as they are written by multiple individuals).
- Test drive the creation of a new Author class which holds information on the author's name and their publisher's telephone number, then include this functionality in the relevant classes through composition.
- In addition to your newly created tests, ensure that all existing unit tests still pass - it may be necessary to make some alterations.

## Plenary
- Code review - any common problems or themes?
- What are the advantages and disadvantages of the two approaches?

## Resources
- [An overview of inheritance and composition in Ruby](https://github.com/pruett/ruby-patterns/blob/master/concepts/inheritance-vs-composition.md)
- [Prefer composition over inheritance](https://www.sitepoint.com/composition-inheritance/)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/README.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/README.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/README.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/README.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/README.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
