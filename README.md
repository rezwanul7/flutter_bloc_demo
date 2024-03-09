# flutter_bloc_demo

Flutter demo project using bloc for state management.

## Counter using primitive

Counter cubit is used to increase the count by one from initial value 0.

## Counter using number model class
Counter cubit is used to increase the count by one from initial value 0 only after .

While moving from primitives to non-primitives/objects we need to override equal and hashcode or use
packages like equatable for comparing value of the objects. Other than that we may end up with
updating the UI multiple times when the data is not changed at all.

Emitting new objects with the same data will update the UI unless equal and hashcode is overridden to consider the data inside the object.    

Without using Equatable [redundant UI updates can be seen for NumberModel{number: 1}]
```shell
I/flutter (13160): Increment Button Clicked 1 times
I/flutter (13160): UI update initiated for : NumberModel{number: 1}
I/flutter (13160): Increment Button Clicked 2 times
I/flutter (13160): UI update initiated for : NumberModel{number: 1}
I/flutter (13160): Increment Button Clicked 3 times
I/flutter (13160): UI update initiated for : NumberModel{number: 1}
I/flutter (13160): Increment Button Clicked 4 times
I/flutter (13160): UI update initiated for : NumberModel{number: 2}
```

Using Equatable [No redundant UI updates]
```shell
I/flutter (13160): Increment Button Clicked 1 times
I/flutter (13160): UI update initiated for : NumberModel{number: 1}
I/flutter (13160): Increment Button Clicked 2 times
I/flutter (13160): Increment Button Clicked 3 times
I/flutter (13160): Increment Button Clicked 4 times
I/flutter (13160): UI update initiated for : NumberModel{number: 2}
```

## Simple calculator
Demonstrating add operation to calculate the sum of two integer numbers. 