@Component
struct TestComponent1287 {
  @State message: string = "Hello from component 1287"

  aboutToAppear() {
    console.log("Component 1287 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
