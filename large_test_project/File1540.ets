@Component
struct TestComponent1540 {
  @State message: string = "Hello from component 1540"

  aboutToAppear() {
    console.log("Component 1540 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
