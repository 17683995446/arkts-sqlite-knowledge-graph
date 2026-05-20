@Component
struct TestComponent1205 {
  @State message: string = "Hello from component 1205"

  aboutToAppear() {
    console.log("Component 1205 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
