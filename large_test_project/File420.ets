@Component
struct TestComponent420 {
  @State message: string = "Hello from component 420"

  aboutToAppear() {
    console.log("Component 420 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
