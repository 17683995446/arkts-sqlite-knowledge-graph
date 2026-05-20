@Component
struct TestComponent1661 {
  @State message: string = "Hello from component 1661"

  aboutToAppear() {
    console.log("Component 1661 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
