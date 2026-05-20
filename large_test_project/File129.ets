@Component
struct TestComponent129 {
  @State message: string = "Hello from component 129"

  aboutToAppear() {
    console.log("Component 129 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
