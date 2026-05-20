@Component
struct TestComponent1762 {
  @State message: string = "Hello from component 1762"

  aboutToAppear() {
    console.log("Component 1762 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
