@Component
struct TestComponent1285 {
  @State message: string = "Hello from component 1285"

  aboutToAppear() {
    console.log("Component 1285 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
