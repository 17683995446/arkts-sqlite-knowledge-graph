@Component
struct TestComponent1180 {
  @State message: string = "Hello from component 1180"

  aboutToAppear() {
    console.log("Component 1180 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
