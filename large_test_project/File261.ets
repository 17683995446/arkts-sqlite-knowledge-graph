@Component
struct TestComponent261 {
  @State message: string = "Hello from component 261"

  aboutToAppear() {
    console.log("Component 261 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
