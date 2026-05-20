@Component
struct TestComponent1421 {
  @State message: string = "Hello from component 1421"

  aboutToAppear() {
    console.log("Component 1421 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
