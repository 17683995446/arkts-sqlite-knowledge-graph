@Component
struct TestComponent964 {
  @State message: string = "Hello from component 964"

  aboutToAppear() {
    console.log("Component 964 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
