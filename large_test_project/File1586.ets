@Component
struct TestComponent1586 {
  @State message: string = "Hello from component 1586"

  aboutToAppear() {
    console.log("Component 1586 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
