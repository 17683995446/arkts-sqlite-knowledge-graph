@Component
struct TestComponent1261 {
  @State message: string = "Hello from component 1261"

  aboutToAppear() {
    console.log("Component 1261 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
