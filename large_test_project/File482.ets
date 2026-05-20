@Component
struct TestComponent482 {
  @State message: string = "Hello from component 482"

  aboutToAppear() {
    console.log("Component 482 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
