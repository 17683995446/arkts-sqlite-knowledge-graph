@Component
struct TestComponent1406 {
  @State message: string = "Hello from component 1406"

  aboutToAppear() {
    console.log("Component 1406 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
