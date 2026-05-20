@Component
struct TestComponent1061 {
  @State message: string = "Hello from component 1061"

  aboutToAppear() {
    console.log("Component 1061 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
