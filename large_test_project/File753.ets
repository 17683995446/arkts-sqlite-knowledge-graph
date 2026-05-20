@Component
struct TestComponent753 {
  @State message: string = "Hello from component 753"

  aboutToAppear() {
    console.log("Component 753 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
