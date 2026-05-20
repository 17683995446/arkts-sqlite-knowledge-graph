@Component
struct TestComponent875 {
  @State message: string = "Hello from component 875"

  aboutToAppear() {
    console.log("Component 875 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
