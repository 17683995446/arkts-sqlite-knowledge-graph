@Component
struct TestComponent1511 {
  @State message: string = "Hello from component 1511"

  aboutToAppear() {
    console.log("Component 1511 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
