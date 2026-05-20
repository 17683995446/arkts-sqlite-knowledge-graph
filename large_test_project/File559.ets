@Component
struct TestComponent559 {
  @State message: string = "Hello from component 559"

  aboutToAppear() {
    console.log("Component 559 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
