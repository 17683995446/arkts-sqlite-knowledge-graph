@Component
struct TestComponent1430 {
  @State message: string = "Hello from component 1430"

  aboutToAppear() {
    console.log("Component 1430 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
