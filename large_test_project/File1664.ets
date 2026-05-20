@Component
struct TestComponent1664 {
  @State message: string = "Hello from component 1664"

  aboutToAppear() {
    console.log("Component 1664 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
