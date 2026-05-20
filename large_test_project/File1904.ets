@Component
struct TestComponent1904 {
  @State message: string = "Hello from component 1904"

  aboutToAppear() {
    console.log("Component 1904 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
