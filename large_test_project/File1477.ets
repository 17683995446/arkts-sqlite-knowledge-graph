@Component
struct TestComponent1477 {
  @State message: string = "Hello from component 1477"

  aboutToAppear() {
    console.log("Component 1477 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
