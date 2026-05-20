@Component
struct TestComponent1633 {
  @State message: string = "Hello from component 1633"

  aboutToAppear() {
    console.log("Component 1633 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
