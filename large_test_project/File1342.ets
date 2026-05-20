@Component
struct TestComponent1342 {
  @State message: string = "Hello from component 1342"

  aboutToAppear() {
    console.log("Component 1342 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
