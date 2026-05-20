@Component
struct TestComponent1595 {
  @State message: string = "Hello from component 1595"

  aboutToAppear() {
    console.log("Component 1595 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
