@Component
struct TestComponent1580 {
  @State message: string = "Hello from component 1580"

  aboutToAppear() {
    console.log("Component 1580 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
