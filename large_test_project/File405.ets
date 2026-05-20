@Component
struct TestComponent405 {
  @State message: string = "Hello from component 405"

  aboutToAppear() {
    console.log("Component 405 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
