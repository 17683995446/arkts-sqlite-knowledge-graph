@Component
struct TestComponent307 {
  @State message: string = "Hello from component 307"

  aboutToAppear() {
    console.log("Component 307 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
