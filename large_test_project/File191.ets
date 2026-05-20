@Component
struct TestComponent191 {
  @State message: string = "Hello from component 191"

  aboutToAppear() {
    console.log("Component 191 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
