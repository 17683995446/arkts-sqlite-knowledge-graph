@Component
struct TestComponent600 {
  @State message: string = "Hello from component 600"

  aboutToAppear() {
    console.log("Component 600 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
