@Component
struct TestComponent1235 {
  @State message: string = "Hello from component 1235"

  aboutToAppear() {
    console.log("Component 1235 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
