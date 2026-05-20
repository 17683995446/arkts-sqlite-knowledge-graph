@Component
struct TestComponent1958 {
  @State message: string = "Hello from component 1958"

  aboutToAppear() {
    console.log("Component 1958 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
