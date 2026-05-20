@Component
struct TestComponent1730 {
  @State message: string = "Hello from component 1730"

  aboutToAppear() {
    console.log("Component 1730 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
