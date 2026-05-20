@Component
struct TestComponent1356 {
  @State message: string = "Hello from component 1356"

  aboutToAppear() {
    console.log("Component 1356 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
