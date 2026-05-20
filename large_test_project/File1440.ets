@Component
struct TestComponent1440 {
  @State message: string = "Hello from component 1440"

  aboutToAppear() {
    console.log("Component 1440 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
