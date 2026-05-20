@Component
struct TestComponent652 {
  @State message: string = "Hello from component 652"

  aboutToAppear() {
    console.log("Component 652 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
