@Component
struct TestComponent423 {
  @State message: string = "Hello from component 423"

  aboutToAppear() {
    console.log("Component 423 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
