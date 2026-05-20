@Component
struct TestComponent1534 {
  @State message: string = "Hello from component 1534"

  aboutToAppear() {
    console.log("Component 1534 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
