@Component
struct TestComponent1784 {
  @State message: string = "Hello from component 1784"

  aboutToAppear() {
    console.log("Component 1784 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
