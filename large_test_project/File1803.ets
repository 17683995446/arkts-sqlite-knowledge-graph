@Component
struct TestComponent1803 {
  @State message: string = "Hello from component 1803"

  aboutToAppear() {
    console.log("Component 1803 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
