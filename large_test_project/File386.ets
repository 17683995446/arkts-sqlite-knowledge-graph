@Component
struct TestComponent386 {
  @State message: string = "Hello from component 386"

  aboutToAppear() {
    console.log("Component 386 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
