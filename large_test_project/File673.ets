@Component
struct TestComponent673 {
  @State message: string = "Hello from component 673"

  aboutToAppear() {
    console.log("Component 673 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
