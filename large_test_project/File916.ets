@Component
struct TestComponent916 {
  @State message: string = "Hello from component 916"

  aboutToAppear() {
    console.log("Component 916 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
