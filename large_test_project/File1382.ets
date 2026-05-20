@Component
struct TestComponent1382 {
  @State message: string = "Hello from component 1382"

  aboutToAppear() {
    console.log("Component 1382 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
