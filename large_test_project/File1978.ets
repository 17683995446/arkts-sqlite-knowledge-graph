@Component
struct TestComponent1978 {
  @State message: string = "Hello from component 1978"

  aboutToAppear() {
    console.log("Component 1978 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
