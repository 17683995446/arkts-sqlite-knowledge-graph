@Component
struct TestComponent1808 {
  @State message: string = "Hello from component 1808"

  aboutToAppear() {
    console.log("Component 1808 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
