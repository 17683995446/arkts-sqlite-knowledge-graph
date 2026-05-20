@Component
struct TestComponent1842 {
  @State message: string = "Hello from component 1842"

  aboutToAppear() {
    console.log("Component 1842 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
