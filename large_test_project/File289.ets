@Component
struct TestComponent289 {
  @State message: string = "Hello from component 289"

  aboutToAppear() {
    console.log("Component 289 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
