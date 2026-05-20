@Component
struct TestComponent1485 {
  @State message: string = "Hello from component 1485"

  aboutToAppear() {
    console.log("Component 1485 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
