@Component
struct TestComponent31 {
  @State message: string = "Hello from component 31"

  aboutToAppear() {
    console.log("Component 31 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
