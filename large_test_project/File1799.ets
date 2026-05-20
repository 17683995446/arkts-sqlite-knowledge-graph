@Component
struct TestComponent1799 {
  @State message: string = "Hello from component 1799"

  aboutToAppear() {
    console.log("Component 1799 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
