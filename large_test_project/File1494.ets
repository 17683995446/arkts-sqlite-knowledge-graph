@Component
struct TestComponent1494 {
  @State message: string = "Hello from component 1494"

  aboutToAppear() {
    console.log("Component 1494 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
