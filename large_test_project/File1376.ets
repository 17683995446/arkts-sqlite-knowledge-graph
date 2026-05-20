@Component
struct TestComponent1376 {
  @State message: string = "Hello from component 1376"

  aboutToAppear() {
    console.log("Component 1376 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
