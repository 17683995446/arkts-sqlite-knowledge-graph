@Component
struct TestComponent1232 {
  @State message: string = "Hello from component 1232"

  aboutToAppear() {
    console.log("Component 1232 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
