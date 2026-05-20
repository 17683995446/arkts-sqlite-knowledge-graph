@Component
struct TestComponent302 {
  @State message: string = "Hello from component 302"

  aboutToAppear() {
    console.log("Component 302 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
