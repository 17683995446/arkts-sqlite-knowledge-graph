@Component
struct TestComponent272 {
  @State message: string = "Hello from component 272"

  aboutToAppear() {
    console.log("Component 272 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
