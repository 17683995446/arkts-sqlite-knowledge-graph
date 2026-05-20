@Component
struct TestComponent656 {
  @State message: string = "Hello from component 656"

  aboutToAppear() {
    console.log("Component 656 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
