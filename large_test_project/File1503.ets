@Component
struct TestComponent1503 {
  @State message: string = "Hello from component 1503"

  aboutToAppear() {
    console.log("Component 1503 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
