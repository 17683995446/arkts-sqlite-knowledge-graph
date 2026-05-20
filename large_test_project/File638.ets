@Component
struct TestComponent638 {
  @State message: string = "Hello from component 638"

  aboutToAppear() {
    console.log("Component 638 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
