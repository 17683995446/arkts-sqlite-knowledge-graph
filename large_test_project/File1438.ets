@Component
struct TestComponent1438 {
  @State message: string = "Hello from component 1438"

  aboutToAppear() {
    console.log("Component 1438 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
