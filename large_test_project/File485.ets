@Component
struct TestComponent485 {
  @State message: string = "Hello from component 485"

  aboutToAppear() {
    console.log("Component 485 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
