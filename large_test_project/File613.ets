@Component
struct TestComponent613 {
  @State message: string = "Hello from component 613"

  aboutToAppear() {
    console.log("Component 613 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
