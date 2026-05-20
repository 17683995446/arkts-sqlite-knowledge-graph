@Component
struct TestComponent1637 {
  @State message: string = "Hello from component 1637"

  aboutToAppear() {
    console.log("Component 1637 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
