@Component
struct TestComponent1678 {
  @State message: string = "Hello from component 1678"

  aboutToAppear() {
    console.log("Component 1678 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
