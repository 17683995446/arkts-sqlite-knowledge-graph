@Component
struct TestComponent1122 {
  @State message: string = "Hello from component 1122"

  aboutToAppear() {
    console.log("Component 1122 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
