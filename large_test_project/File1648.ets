@Component
struct TestComponent1648 {
  @State message: string = "Hello from component 1648"

  aboutToAppear() {
    console.log("Component 1648 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
