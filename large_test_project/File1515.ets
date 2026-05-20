@Component
struct TestComponent1515 {
  @State message: string = "Hello from component 1515"

  aboutToAppear() {
    console.log("Component 1515 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
