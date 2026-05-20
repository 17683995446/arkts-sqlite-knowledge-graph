@Component
struct TestComponent968 {
  @State message: string = "Hello from component 968"

  aboutToAppear() {
    console.log("Component 968 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
