@Component
struct TestComponent143 {
  @State message: string = "Hello from component 143"

  aboutToAppear() {
    console.log("Component 143 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
