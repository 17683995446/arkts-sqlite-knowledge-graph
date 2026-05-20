@Component
struct TestComponent540 {
  @State message: string = "Hello from component 540"

  aboutToAppear() {
    console.log("Component 540 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
