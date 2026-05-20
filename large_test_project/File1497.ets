@Component
struct TestComponent1497 {
  @State message: string = "Hello from component 1497"

  aboutToAppear() {
    console.log("Component 1497 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
