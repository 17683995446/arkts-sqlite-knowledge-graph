@Component
struct TestComponent504 {
  @State message: string = "Hello from component 504"

  aboutToAppear() {
    console.log("Component 504 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
