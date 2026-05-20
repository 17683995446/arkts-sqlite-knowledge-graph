@Component
struct TestComponent1693 {
  @State message: string = "Hello from component 1693"

  aboutToAppear() {
    console.log("Component 1693 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
