@Component
struct TestComponent1550 {
  @State message: string = "Hello from component 1550"

  aboutToAppear() {
    console.log("Component 1550 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
