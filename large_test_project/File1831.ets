@Component
struct TestComponent1831 {
  @State message: string = "Hello from component 1831"

  aboutToAppear() {
    console.log("Component 1831 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
