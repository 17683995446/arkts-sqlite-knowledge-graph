@Component
struct TestComponent437 {
  @State message: string = "Hello from component 437"

  aboutToAppear() {
    console.log("Component 437 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
