@Component
struct TestComponent1706 {
  @State message: string = "Hello from component 1706"

  aboutToAppear() {
    console.log("Component 1706 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
