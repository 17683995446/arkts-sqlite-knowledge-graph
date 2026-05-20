@Component
struct TestComponent676 {
  @State message: string = "Hello from component 676"

  aboutToAppear() {
    console.log("Component 676 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
