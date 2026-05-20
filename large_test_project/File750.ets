@Component
struct TestComponent750 {
  @State message: string = "Hello from component 750"

  aboutToAppear() {
    console.log("Component 750 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
