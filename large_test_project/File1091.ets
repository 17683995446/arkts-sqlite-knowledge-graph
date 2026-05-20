@Component
struct TestComponent1091 {
  @State message: string = "Hello from component 1091"

  aboutToAppear() {
    console.log("Component 1091 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
