@Component
struct TestComponent1902 {
  @State message: string = "Hello from component 1902"

  aboutToAppear() {
    console.log("Component 1902 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
