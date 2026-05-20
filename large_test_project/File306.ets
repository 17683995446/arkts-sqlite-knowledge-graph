@Component
struct TestComponent306 {
  @State message: string = "Hello from component 306"

  aboutToAppear() {
    console.log("Component 306 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
