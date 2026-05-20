@Component
struct TestComponent595 {
  @State message: string = "Hello from component 595"

  aboutToAppear() {
    console.log("Component 595 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
