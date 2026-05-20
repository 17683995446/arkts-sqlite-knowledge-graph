@Component
struct TestComponent511 {
  @State message: string = "Hello from component 511"

  aboutToAppear() {
    console.log("Component 511 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
