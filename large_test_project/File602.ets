@Component
struct TestComponent602 {
  @State message: string = "Hello from component 602"

  aboutToAppear() {
    console.log("Component 602 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
