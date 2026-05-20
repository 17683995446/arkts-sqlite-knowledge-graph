@Component
struct TestComponent1124 {
  @State message: string = "Hello from component 1124"

  aboutToAppear() {
    console.log("Component 1124 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
