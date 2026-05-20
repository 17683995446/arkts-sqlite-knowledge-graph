@Component
struct TestComponent560 {
  @State message: string = "Hello from component 560"

  aboutToAppear() {
    console.log("Component 560 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
