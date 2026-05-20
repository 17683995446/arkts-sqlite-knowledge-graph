@Component
struct TestComponent715 {
  @State message: string = "Hello from component 715"

  aboutToAppear() {
    console.log("Component 715 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
