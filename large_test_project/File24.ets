@Component
struct TestComponent24 {
  @State message: string = "Hello from component 24"

  aboutToAppear() {
    console.log("Component 24 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
