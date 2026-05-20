@Component
struct TestComponent654 {
  @State message: string = "Hello from component 654"

  aboutToAppear() {
    console.log("Component 654 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
