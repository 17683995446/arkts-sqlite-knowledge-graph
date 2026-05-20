@Component
struct TestComponent1243 {
  @State message: string = "Hello from component 1243"

  aboutToAppear() {
    console.log("Component 1243 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
