@Component
struct TestComponent336 {
  @State message: string = "Hello from component 336"

  aboutToAppear() {
    console.log("Component 336 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
