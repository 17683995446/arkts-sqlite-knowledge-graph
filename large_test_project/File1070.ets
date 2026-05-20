@Component
struct TestComponent1070 {
  @State message: string = "Hello from component 1070"

  aboutToAppear() {
    console.log("Component 1070 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
