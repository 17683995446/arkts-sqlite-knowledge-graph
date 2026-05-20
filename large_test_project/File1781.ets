@Component
struct TestComponent1781 {
  @State message: string = "Hello from component 1781"

  aboutToAppear() {
    console.log("Component 1781 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
