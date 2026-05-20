@Component
struct TestComponent1074 {
  @State message: string = "Hello from component 1074"

  aboutToAppear() {
    console.log("Component 1074 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
