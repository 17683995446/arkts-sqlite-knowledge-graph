@Component
struct TestComponent1442 {
  @State message: string = "Hello from component 1442"

  aboutToAppear() {
    console.log("Component 1442 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
