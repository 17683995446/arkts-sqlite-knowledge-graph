@Component
struct TestComponent1202 {
  @State message: string = "Hello from component 1202"

  aboutToAppear() {
    console.log("Component 1202 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
