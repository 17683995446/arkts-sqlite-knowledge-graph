@Component
struct TestComponent376 {
  @State message: string = "Hello from component 376"

  aboutToAppear() {
    console.log("Component 376 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
