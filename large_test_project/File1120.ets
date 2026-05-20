@Component
struct TestComponent1120 {
  @State message: string = "Hello from component 1120"

  aboutToAppear() {
    console.log("Component 1120 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
