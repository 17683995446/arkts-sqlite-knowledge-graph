@Component
struct TestComponent1612 {
  @State message: string = "Hello from component 1612"

  aboutToAppear() {
    console.log("Component 1612 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
