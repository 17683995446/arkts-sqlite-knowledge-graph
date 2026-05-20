@Component
struct TestComponent874 {
  @State message: string = "Hello from component 874"

  aboutToAppear() {
    console.log("Component 874 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
