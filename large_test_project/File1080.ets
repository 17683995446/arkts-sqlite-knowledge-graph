@Component
struct TestComponent1080 {
  @State message: string = "Hello from component 1080"

  aboutToAppear() {
    console.log("Component 1080 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
