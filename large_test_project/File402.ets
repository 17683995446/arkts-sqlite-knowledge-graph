@Component
struct TestComponent402 {
  @State message: string = "Hello from component 402"

  aboutToAppear() {
    console.log("Component 402 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
