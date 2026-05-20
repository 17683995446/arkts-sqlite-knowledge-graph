@Component
struct TestComponent620 {
  @State message: string = "Hello from component 620"

  aboutToAppear() {
    console.log("Component 620 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
