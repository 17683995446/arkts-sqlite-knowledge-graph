@Component
struct TestComponent1107 {
  @State message: string = "Hello from component 1107"

  aboutToAppear() {
    console.log("Component 1107 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
