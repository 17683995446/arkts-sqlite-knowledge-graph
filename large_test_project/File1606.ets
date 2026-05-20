@Component
struct TestComponent1606 {
  @State message: string = "Hello from component 1606"

  aboutToAppear() {
    console.log("Component 1606 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
