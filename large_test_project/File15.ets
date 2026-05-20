@Component
struct TestComponent15 {
  @State message: string = "Hello from component 15"

  aboutToAppear() {
    console.log("Component 15 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
