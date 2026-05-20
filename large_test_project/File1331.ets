@Component
struct TestComponent1331 {
  @State message: string = "Hello from component 1331"

  aboutToAppear() {
    console.log("Component 1331 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
