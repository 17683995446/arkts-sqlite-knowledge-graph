@Component
struct TestComponent557 {
  @State message: string = "Hello from component 557"

  aboutToAppear() {
    console.log("Component 557 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
