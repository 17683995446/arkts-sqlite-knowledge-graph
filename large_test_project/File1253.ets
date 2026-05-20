@Component
struct TestComponent1253 {
  @State message: string = "Hello from component 1253"

  aboutToAppear() {
    console.log("Component 1253 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
