@Component
struct TestComponent369 {
  @State message: string = "Hello from component 369"

  aboutToAppear() {
    console.log("Component 369 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
