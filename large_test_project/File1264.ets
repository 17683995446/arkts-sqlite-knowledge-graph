@Component
struct TestComponent1264 {
  @State message: string = "Hello from component 1264"

  aboutToAppear() {
    console.log("Component 1264 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
