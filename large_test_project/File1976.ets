@Component
struct TestComponent1976 {
  @State message: string = "Hello from component 1976"

  aboutToAppear() {
    console.log("Component 1976 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
