@Component
struct TestComponent565 {
  @State message: string = "Hello from component 565"

  aboutToAppear() {
    console.log("Component 565 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
