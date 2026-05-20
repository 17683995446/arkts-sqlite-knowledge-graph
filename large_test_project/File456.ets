@Component
struct TestComponent456 {
  @State message: string = "Hello from component 456"

  aboutToAppear() {
    console.log("Component 456 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
