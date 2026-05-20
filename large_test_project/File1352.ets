@Component
struct TestComponent1352 {
  @State message: string = "Hello from component 1352"

  aboutToAppear() {
    console.log("Component 1352 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
