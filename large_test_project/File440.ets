@Component
struct TestComponent440 {
  @State message: string = "Hello from component 440"

  aboutToAppear() {
    console.log("Component 440 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
