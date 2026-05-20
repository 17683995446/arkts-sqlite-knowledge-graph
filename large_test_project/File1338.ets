@Component
struct TestComponent1338 {
  @State message: string = "Hello from component 1338"

  aboutToAppear() {
    console.log("Component 1338 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
