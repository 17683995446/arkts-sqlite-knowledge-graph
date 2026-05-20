@Component
struct TestComponent902 {
  @State message: string = "Hello from component 902"

  aboutToAppear() {
    console.log("Component 902 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
