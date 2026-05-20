@Component
struct TestComponent1293 {
  @State message: string = "Hello from component 1293"

  aboutToAppear() {
    console.log("Component 1293 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
