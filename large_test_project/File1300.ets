@Component
struct TestComponent1300 {
  @State message: string = "Hello from component 1300"

  aboutToAppear() {
    console.log("Component 1300 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
