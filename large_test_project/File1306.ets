@Component
struct TestComponent1306 {
  @State message: string = "Hello from component 1306"

  aboutToAppear() {
    console.log("Component 1306 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
