@Component
struct TestComponent1272 {
  @State message: string = "Hello from component 1272"

  aboutToAppear() {
    console.log("Component 1272 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
