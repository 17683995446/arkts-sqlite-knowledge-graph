@Component
struct TestComponent1713 {
  @State message: string = "Hello from component 1713"

  aboutToAppear() {
    console.log("Component 1713 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
