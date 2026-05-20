@Component
struct TestComponent1634 {
  @State message: string = "Hello from component 1634"

  aboutToAppear() {
    console.log("Component 1634 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
