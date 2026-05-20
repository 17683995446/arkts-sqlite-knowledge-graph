@Component
struct TestComponent1280 {
  @State message: string = "Hello from component 1280"

  aboutToAppear() {
    console.log("Component 1280 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
