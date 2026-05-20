@Component
struct TestComponent377 {
  @State message: string = "Hello from component 377"

  aboutToAppear() {
    console.log("Component 377 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
