@Component
struct TestComponent1298 {
  @State message: string = "Hello from component 1298"

  aboutToAppear() {
    console.log("Component 1298 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
