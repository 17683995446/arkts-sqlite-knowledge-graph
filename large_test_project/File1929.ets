@Component
struct TestComponent1929 {
  @State message: string = "Hello from component 1929"

  aboutToAppear() {
    console.log("Component 1929 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
