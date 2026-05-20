@Component
struct TestComponent830 {
  @State message: string = "Hello from component 830"

  aboutToAppear() {
    console.log("Component 830 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
