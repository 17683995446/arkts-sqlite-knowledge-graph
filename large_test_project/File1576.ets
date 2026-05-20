@Component
struct TestComponent1576 {
  @State message: string = "Hello from component 1576"

  aboutToAppear() {
    console.log("Component 1576 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
