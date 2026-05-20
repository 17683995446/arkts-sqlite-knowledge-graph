@Component
struct TestComponent1123 {
  @State message: string = "Hello from component 1123"

  aboutToAppear() {
    console.log("Component 1123 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
