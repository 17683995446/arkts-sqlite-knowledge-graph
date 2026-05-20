@Component
struct TestComponent1581 {
  @State message: string = "Hello from component 1581"

  aboutToAppear() {
    console.log("Component 1581 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
