@Component
struct TestComponent1125 {
  @State message: string = "Hello from component 1125"

  aboutToAppear() {
    console.log("Component 1125 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
