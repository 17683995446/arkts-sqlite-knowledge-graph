@Component
struct TestComponent1411 {
  @State message: string = "Hello from component 1411"

  aboutToAppear() {
    console.log("Component 1411 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
