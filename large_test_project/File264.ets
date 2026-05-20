@Component
struct TestComponent264 {
  @State message: string = "Hello from component 264"

  aboutToAppear() {
    console.log("Component 264 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
