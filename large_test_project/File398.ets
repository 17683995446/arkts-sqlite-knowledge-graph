@Component
struct TestComponent398 {
  @State message: string = "Hello from component 398"

  aboutToAppear() {
    console.log("Component 398 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
