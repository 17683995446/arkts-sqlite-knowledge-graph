@Component
struct TestComponent1654 {
  @State message: string = "Hello from component 1654"

  aboutToAppear() {
    console.log("Component 1654 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
