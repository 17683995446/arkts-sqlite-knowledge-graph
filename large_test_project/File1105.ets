@Component
struct TestComponent1105 {
  @State message: string = "Hello from component 1105"

  aboutToAppear() {
    console.log("Component 1105 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
