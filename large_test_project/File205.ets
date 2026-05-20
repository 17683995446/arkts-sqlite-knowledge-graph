@Component
struct TestComponent205 {
  @State message: string = "Hello from component 205"

  aboutToAppear() {
    console.log("Component 205 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
