@Component
struct TestComponent900 {
  @State message: string = "Hello from component 900"

  aboutToAppear() {
    console.log("Component 900 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
