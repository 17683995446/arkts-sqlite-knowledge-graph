@Component
struct TestComponent1558 {
  @State message: string = "Hello from component 1558"

  aboutToAppear() {
    console.log("Component 1558 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
