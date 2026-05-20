@Component
struct TestComponent592 {
  @State message: string = "Hello from component 592"

  aboutToAppear() {
    console.log("Component 592 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
