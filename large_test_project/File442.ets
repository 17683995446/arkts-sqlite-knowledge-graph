@Component
struct TestComponent442 {
  @State message: string = "Hello from component 442"

  aboutToAppear() {
    console.log("Component 442 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
