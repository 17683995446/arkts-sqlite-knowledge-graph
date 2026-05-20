@Component
struct TestComponent1129 {
  @State message: string = "Hello from component 1129"

  aboutToAppear() {
    console.log("Component 1129 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
