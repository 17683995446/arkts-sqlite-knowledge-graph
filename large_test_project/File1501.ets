@Component
struct TestComponent1501 {
  @State message: string = "Hello from component 1501"

  aboutToAppear() {
    console.log("Component 1501 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
