@Component
struct TestComponent1874 {
  @State message: string = "Hello from component 1874"

  aboutToAppear() {
    console.log("Component 1874 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
