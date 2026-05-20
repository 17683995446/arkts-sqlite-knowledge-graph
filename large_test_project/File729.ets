@Component
struct TestComponent729 {
  @State message: string = "Hello from component 729"

  aboutToAppear() {
    console.log("Component 729 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
