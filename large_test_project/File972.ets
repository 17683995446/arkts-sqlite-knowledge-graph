@Component
struct TestComponent972 {
  @State message: string = "Hello from component 972"

  aboutToAppear() {
    console.log("Component 972 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
