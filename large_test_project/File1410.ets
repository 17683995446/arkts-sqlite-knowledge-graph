@Component
struct TestComponent1410 {
  @State message: string = "Hello from component 1410"

  aboutToAppear() {
    console.log("Component 1410 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
