@Component
struct TestComponent1046 {
  @State message: string = "Hello from component 1046"

  aboutToAppear() {
    console.log("Component 1046 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
