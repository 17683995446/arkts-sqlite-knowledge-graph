@Component
struct TestComponent1321 {
  @State message: string = "Hello from component 1321"

  aboutToAppear() {
    console.log("Component 1321 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
