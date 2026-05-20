@Component
struct TestComponent1562 {
  @State message: string = "Hello from component 1562"

  aboutToAppear() {
    console.log("Component 1562 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
