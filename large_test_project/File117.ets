@Component
struct TestComponent117 {
  @State message: string = "Hello from component 117"

  aboutToAppear() {
    console.log("Component 117 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
