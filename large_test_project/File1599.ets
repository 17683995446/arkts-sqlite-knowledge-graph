@Component
struct TestComponent1599 {
  @State message: string = "Hello from component 1599"

  aboutToAppear() {
    console.log("Component 1599 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
