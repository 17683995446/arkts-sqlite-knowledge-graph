@Component
struct TestComponent590 {
  @State message: string = "Hello from component 590"

  aboutToAppear() {
    console.log("Component 590 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
