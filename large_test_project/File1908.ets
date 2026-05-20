@Component
struct TestComponent1908 {
  @State message: string = "Hello from component 1908"

  aboutToAppear() {
    console.log("Component 1908 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
