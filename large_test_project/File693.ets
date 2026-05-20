@Component
struct TestComponent693 {
  @State message: string = "Hello from component 693"

  aboutToAppear() {
    console.log("Component 693 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
