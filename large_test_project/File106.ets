@Component
struct TestComponent106 {
  @State message: string = "Hello from component 106"

  aboutToAppear() {
    console.log("Component 106 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
