@Component
struct TestComponent1598 {
  @State message: string = "Hello from component 1598"

  aboutToAppear() {
    console.log("Component 1598 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
