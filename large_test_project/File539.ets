@Component
struct TestComponent539 {
  @State message: string = "Hello from component 539"

  aboutToAppear() {
    console.log("Component 539 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
