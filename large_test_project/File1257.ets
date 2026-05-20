@Component
struct TestComponent1257 {
  @State message: string = "Hello from component 1257"

  aboutToAppear() {
    console.log("Component 1257 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
