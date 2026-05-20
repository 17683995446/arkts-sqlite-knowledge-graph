@Component
struct TestComponent820 {
  @State message: string = "Hello from component 820"

  aboutToAppear() {
    console.log("Component 820 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
