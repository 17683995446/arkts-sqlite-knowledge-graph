@Component
struct TestComponent188 {
  @State message: string = "Hello from component 188"

  aboutToAppear() {
    console.log("Component 188 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
