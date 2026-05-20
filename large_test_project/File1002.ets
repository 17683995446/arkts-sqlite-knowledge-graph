@Component
struct TestComponent1002 {
  @State message: string = "Hello from component 1002"

  aboutToAppear() {
    console.log("Component 1002 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
