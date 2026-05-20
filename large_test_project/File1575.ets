@Component
struct TestComponent1575 {
  @State message: string = "Hello from component 1575"

  aboutToAppear() {
    console.log("Component 1575 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
