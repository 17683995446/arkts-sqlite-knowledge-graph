@Component
struct TestComponent173 {
  @State message: string = "Hello from component 173"

  aboutToAppear() {
    console.log("Component 173 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
