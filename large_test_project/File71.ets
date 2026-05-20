@Component
struct TestComponent71 {
  @State message: string = "Hello from component 71"

  aboutToAppear() {
    console.log("Component 71 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
