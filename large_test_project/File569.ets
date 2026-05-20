@Component
struct TestComponent569 {
  @State message: string = "Hello from component 569"

  aboutToAppear() {
    console.log("Component 569 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
