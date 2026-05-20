@Component
struct TestComponent1935 {
  @State message: string = "Hello from component 1935"

  aboutToAppear() {
    console.log("Component 1935 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
