@Component
struct TestComponent1856 {
  @State message: string = "Hello from component 1856"

  aboutToAppear() {
    console.log("Component 1856 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
