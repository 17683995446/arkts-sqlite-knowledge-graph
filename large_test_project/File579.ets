@Component
struct TestComponent579 {
  @State message: string = "Hello from component 579"

  aboutToAppear() {
    console.log("Component 579 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
