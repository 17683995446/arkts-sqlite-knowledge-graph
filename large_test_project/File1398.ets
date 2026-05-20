@Component
struct TestComponent1398 {
  @State message: string = "Hello from component 1398"

  aboutToAppear() {
    console.log("Component 1398 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
