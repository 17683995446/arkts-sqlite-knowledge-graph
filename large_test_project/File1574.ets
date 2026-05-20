@Component
struct TestComponent1574 {
  @State message: string = "Hello from component 1574"

  aboutToAppear() {
    console.log("Component 1574 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
