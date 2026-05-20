@Component
struct TestComponent614 {
  @State message: string = "Hello from component 614"

  aboutToAppear() {
    console.log("Component 614 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
