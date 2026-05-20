@Component
struct TestComponent1367 {
  @State message: string = "Hello from component 1367"

  aboutToAppear() {
    console.log("Component 1367 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
