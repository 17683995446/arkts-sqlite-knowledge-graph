@Component
struct TestComponent1765 {
  @State message: string = "Hello from component 1765"

  aboutToAppear() {
    console.log("Component 1765 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
