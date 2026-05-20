@Component
struct TestComponent107 {
  @State message: string = "Hello from component 107"

  aboutToAppear() {
    console.log("Component 107 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
