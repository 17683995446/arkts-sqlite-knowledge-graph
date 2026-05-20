@Component
struct TestComponent594 {
  @State message: string = "Hello from component 594"

  aboutToAppear() {
    console.log("Component 594 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
