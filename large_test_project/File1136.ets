@Component
struct TestComponent1136 {
  @State message: string = "Hello from component 1136"

  aboutToAppear() {
    console.log("Component 1136 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
