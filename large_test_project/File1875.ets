@Component
struct TestComponent1875 {
  @State message: string = "Hello from component 1875"

  aboutToAppear() {
    console.log("Component 1875 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
