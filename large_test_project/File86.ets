@Component
struct TestComponent86 {
  @State message: string = "Hello from component 86"

  aboutToAppear() {
    console.log("Component 86 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
