@Component
struct TestComponent1939 {
  @State message: string = "Hello from component 1939"

  aboutToAppear() {
    console.log("Component 1939 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
