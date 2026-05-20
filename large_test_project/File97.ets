@Component
struct TestComponent97 {
  @State message: string = "Hello from component 97"

  aboutToAppear() {
    console.log("Component 97 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
