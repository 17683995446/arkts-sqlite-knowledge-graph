@Component
struct TestComponent1065 {
  @State message: string = "Hello from component 1065"

  aboutToAppear() {
    console.log("Component 1065 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
