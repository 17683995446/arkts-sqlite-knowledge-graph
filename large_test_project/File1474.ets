@Component
struct TestComponent1474 {
  @State message: string = "Hello from component 1474"

  aboutToAppear() {
    console.log("Component 1474 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
