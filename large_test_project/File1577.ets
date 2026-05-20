@Component
struct TestComponent1577 {
  @State message: string = "Hello from component 1577"

  aboutToAppear() {
    console.log("Component 1577 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
