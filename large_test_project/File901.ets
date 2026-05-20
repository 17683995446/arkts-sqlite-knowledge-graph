@Component
struct TestComponent901 {
  @State message: string = "Hello from component 901"

  aboutToAppear() {
    console.log("Component 901 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
