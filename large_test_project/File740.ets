@Component
struct TestComponent740 {
  @State message: string = "Hello from component 740"

  aboutToAppear() {
    console.log("Component 740 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
