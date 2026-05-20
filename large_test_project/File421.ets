@Component
struct TestComponent421 {
  @State message: string = "Hello from component 421"

  aboutToAppear() {
    console.log("Component 421 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
