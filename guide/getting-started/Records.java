

record Pair<T, U>(T first, U second) {}

void main() {
    Pair<Integer, String> pair = new Pair<>(1, "one");
    IO.println("First: " + pair.first());
    IO.println("Second: " + pair.second());
      
}