# Java Records classes


```
public record Point(int x, int y) {}

```

* It is an immutable class with two fields: x and y, of type int.
* It has a canonical constructor, to initialize these two fields. Canonical cunstructor added by compiler according parameters
* The toString(), equals() and hashCode() methods have been created for you by the compiler with a default behavior that corresponds to what an IDE would have generated. You can modify this behavior if you need, by adding your own implementations of these methods.
* It can implement the Serializable interface, so that you can send instances of Point to other applications over a network or through a file system. The way a record is serialized and deserialized follows some special rules that are covered at the end of this tutorial.



* Compact constructor is for record classes new constructor type for type early validation 



```

record Point(int x, int y) {
    // Compact constructor for validation
    Point { // No parameters needed in the header
        if (x < 0 || y < 0) {
            throw new IllegalArgumentException("Coordinates must be non-negative");
        }
        // Could also normalize data here, e.g., using List.copyOf() for mutable components
    }
}



```