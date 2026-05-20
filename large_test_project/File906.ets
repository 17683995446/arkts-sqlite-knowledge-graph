@Component
struct TestComponent906 {
  @State message: string = "Hello from component 906"

  aboutToAppear() {
    console.log("Component 906 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
