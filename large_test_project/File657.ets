@Component
struct TestComponent657 {
  @State message: string = "Hello from component 657"

  aboutToAppear() {
    console.log("Component 657 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
