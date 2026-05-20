@Component
struct TestComponent1804 {
  @State message: string = "Hello from component 1804"

  aboutToAppear() {
    console.log("Component 1804 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
