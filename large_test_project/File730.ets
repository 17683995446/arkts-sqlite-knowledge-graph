@Component
struct TestComponent730 {
  @State message: string = "Hello from component 730"

  aboutToAppear() {
    console.log("Component 730 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
