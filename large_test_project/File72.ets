@Component
struct TestComponent72 {
  @State message: string = "Hello from component 72"

  aboutToAppear() {
    console.log("Component 72 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
