@Component
struct TestComponent224 {
  @State message: string = "Hello from component 224"

  aboutToAppear() {
    console.log("Component 224 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
