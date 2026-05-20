@Component
struct TestComponent1231 {
  @State message: string = "Hello from component 1231"

  aboutToAppear() {
    console.log("Component 1231 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
