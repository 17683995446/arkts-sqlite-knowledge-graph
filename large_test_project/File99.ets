@Component
struct TestComponent99 {
  @State message: string = "Hello from component 99"

  aboutToAppear() {
    console.log("Component 99 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
