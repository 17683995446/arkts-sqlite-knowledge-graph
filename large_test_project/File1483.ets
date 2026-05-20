@Component
struct TestComponent1483 {
  @State message: string = "Hello from component 1483"

  aboutToAppear() {
    console.log("Component 1483 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
