@Component
struct TestComponent1900 {
  @State message: string = "Hello from component 1900"

  aboutToAppear() {
    console.log("Component 1900 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
