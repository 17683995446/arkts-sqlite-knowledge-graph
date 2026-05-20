@Component
struct TestComponent1025 {
  @State message: string = "Hello from component 1025"

  aboutToAppear() {
    console.log("Component 1025 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
