@Component
struct TestComponent186 {
  @State message: string = "Hello from component 186"

  aboutToAppear() {
    console.log("Component 186 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
