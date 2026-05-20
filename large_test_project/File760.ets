@Component
struct TestComponent760 {
  @State message: string = "Hello from component 760"

  aboutToAppear() {
    console.log("Component 760 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
