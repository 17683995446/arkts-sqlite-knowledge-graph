@Component
struct TestComponent1364 {
  @State message: string = "Hello from component 1364"

  aboutToAppear() {
    console.log("Component 1364 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
