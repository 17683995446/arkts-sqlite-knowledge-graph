@Component
struct TestComponent387 {
  @State message: string = "Hello from component 387"

  aboutToAppear() {
    console.log("Component 387 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
