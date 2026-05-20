@Component
struct TestComponent382 {
  @State message: string = "Hello from component 382"

  aboutToAppear() {
    console.log("Component 382 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
