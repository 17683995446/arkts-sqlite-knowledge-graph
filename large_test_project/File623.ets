@Component
struct TestComponent623 {
  @State message: string = "Hello from component 623"

  aboutToAppear() {
    console.log("Component 623 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
