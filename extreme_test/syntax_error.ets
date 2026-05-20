@Component
struct BadSyntaxError {
  build() {
    Column() {
      Text("Hello)
    }
  }
