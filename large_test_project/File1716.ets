@Component
struct TestComponent1716 {
  @State message: string = "Hello from component 1716"

  aboutToAppear() {
    console.log("Component 1716 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
