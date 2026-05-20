@Component
struct TestComponent1909 {
  @State message: string = "Hello from component 1909"

  aboutToAppear() {
    console.log("Component 1909 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
