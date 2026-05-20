@Component
struct TestComponent221 {
  @State message: string = "Hello from component 221"

  aboutToAppear() {
    console.log("Component 221 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
