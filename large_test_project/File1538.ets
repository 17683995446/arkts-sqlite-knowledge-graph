@Component
struct TestComponent1538 {
  @State message: string = "Hello from component 1538"

  aboutToAppear() {
    console.log("Component 1538 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
