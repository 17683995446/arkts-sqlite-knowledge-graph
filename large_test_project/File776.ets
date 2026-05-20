@Component
struct TestComponent776 {
  @State message: string = "Hello from component 776"

  aboutToAppear() {
    console.log("Component 776 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
