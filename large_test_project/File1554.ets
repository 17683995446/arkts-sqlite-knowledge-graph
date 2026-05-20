@Component
struct TestComponent1554 {
  @State message: string = "Hello from component 1554"

  aboutToAppear() {
    console.log("Component 1554 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
