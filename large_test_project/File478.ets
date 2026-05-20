@Component
struct TestComponent478 {
  @State message: string = "Hello from component 478"

  aboutToAppear() {
    console.log("Component 478 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
