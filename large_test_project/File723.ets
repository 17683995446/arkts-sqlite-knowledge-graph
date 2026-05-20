@Component
struct TestComponent723 {
  @State message: string = "Hello from component 723"

  aboutToAppear() {
    console.log("Component 723 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
