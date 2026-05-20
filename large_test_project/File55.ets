@Component
struct TestComponent55 {
  @State message: string = "Hello from component 55"

  aboutToAppear() {
    console.log("Component 55 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
