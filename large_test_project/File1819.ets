@Component
struct TestComponent1819 {
  @State message: string = "Hello from component 1819"

  aboutToAppear() {
    console.log("Component 1819 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
