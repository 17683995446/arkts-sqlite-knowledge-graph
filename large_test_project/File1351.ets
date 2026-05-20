@Component
struct TestComponent1351 {
  @State message: string = "Hello from component 1351"

  aboutToAppear() {
    console.log("Component 1351 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
