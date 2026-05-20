@Component
struct TestComponent838 {
  @State message: string = "Hello from component 838"

  aboutToAppear() {
    console.log("Component 838 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
