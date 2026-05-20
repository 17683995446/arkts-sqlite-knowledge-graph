@Component
struct TestComponent1178 {
  @State message: string = "Hello from component 1178"

  aboutToAppear() {
    console.log("Component 1178 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
