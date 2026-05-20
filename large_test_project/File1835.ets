@Component
struct TestComponent1835 {
  @State message: string = "Hello from component 1835"

  aboutToAppear() {
    console.log("Component 1835 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
