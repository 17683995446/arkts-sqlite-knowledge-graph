@Component
struct TestComponent1461 {
  @State message: string = "Hello from component 1461"

  aboutToAppear() {
    console.log("Component 1461 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
