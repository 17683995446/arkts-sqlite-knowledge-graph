@Component
struct TestComponent697 {
  @State message: string = "Hello from component 697"

  aboutToAppear() {
    console.log("Component 697 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
