@Component
struct TestComponent1821 {
  @State message: string = "Hello from component 1821"

  aboutToAppear() {
    console.log("Component 1821 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
