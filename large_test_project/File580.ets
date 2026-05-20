@Component
struct TestComponent580 {
  @State message: string = "Hello from component 580"

  aboutToAppear() {
    console.log("Component 580 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
