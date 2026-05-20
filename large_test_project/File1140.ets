@Component
struct TestComponent1140 {
  @State message: string = "Hello from component 1140"

  aboutToAppear() {
    console.log("Component 1140 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
