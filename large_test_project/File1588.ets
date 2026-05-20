@Component
struct TestComponent1588 {
  @State message: string = "Hello from component 1588"

  aboutToAppear() {
    console.log("Component 1588 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
