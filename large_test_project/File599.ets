@Component
struct TestComponent599 {
  @State message: string = "Hello from component 599"

  aboutToAppear() {
    console.log("Component 599 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
