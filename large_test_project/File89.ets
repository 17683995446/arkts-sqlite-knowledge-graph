@Component
struct TestComponent89 {
  @State message: string = "Hello from component 89"

  aboutToAppear() {
    console.log("Component 89 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
