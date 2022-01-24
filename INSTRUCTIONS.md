# Polymorphism, Inheritance and Composition

> "Designing object-oriented software is hard, and designing reusable object-oriented software is even harder."
> – Design Patterns: Elements of Reusable Object-Oriented Software

Polymorphism, inheritance and composition - what are they, and where should I use them?

## Learning Objectives

- Know that inheritance cascades methods from a superclass
- Explain how method implementations can be overridden in a subclass
- Use composition as an alternative to inheritance

## Intro (10-15 mins)
- Reiterate high level goals for the week
- Ask for thumbs on the learning objectives for the workshop
- Display code snippet in example/vehicles.rb - discuss problem of code repetition
- Demonstrate refactoring the example using inheritance - emphasise that this pattern suggests an 'is a' relationship

## Main 1 - Inheritance (15 mins)
### Exercise 1
- Refactor the code base to DRY up repetition by implementing inheritance.  
- You should not need to modify the existing unit tests, and they should all still pass once you're done.

## Mini-Plenary (20 mins)
- Discuss advantages and canvas for possible drawbacks - demonstrate the problem of tight coupling between the superclass and subclasses by extending the interface of the superclass and introducing unwanted functionality into one of the subclasses
- return to the code and demonstrate composition as an alternative to inheritance, emphasise 'has a' relationship

## Main 2 - Composition (20 mins)
### Exercise 2
- Now that you've dealt with the repetition, its time to introduce some new functionality.  Books and articles should both hold information on their authors (Newspapers should not include this functionality, as they are written by multiple individuals).
- Test drive the creation of a new Author class which holds information on the author's name and their publisher's telephone number, then include this functionality in the relevant classes through composition.
- In addition to your newly created tests, ensure that all existing unit tests still pass - it may be necessary to make some alterations.

## Plenary (20 mins)
- Students share code from exercise for review - pick out any common themes, problems or misunderstandings which arise
- Revisit and discuss the pros and cons of both inheritance and composition
- discuss advantages of composition:
  * allows for picking and choosing from the base class' interface
  * keeps objects independent of each other - less fear of unintentionally affecting the dependent objects
  * more flexible + extensible
- Discuss where it may be appropriate to use each pattern, but stress that composition is generally preferable
- Ask for thumbs on the learning objectives for the workshop

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/INSTRUCTIONS.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/INSTRUCTIONS.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/INSTRUCTIONS.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/INSTRUCTIONS.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/polymorphism_through_inheritance_and_composition/INSTRUCTIONS.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
