@Component
struct TestComponent1292 {
  @State message: string = "Hello from component 1292"

  aboutToAppear() {
    console.log("Component 1292 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
