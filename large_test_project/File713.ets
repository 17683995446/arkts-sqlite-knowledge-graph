@Component
struct TestComponent713 {
  @State message: string = "Hello from component 713"

  aboutToAppear() {
    console.log("Component 713 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
