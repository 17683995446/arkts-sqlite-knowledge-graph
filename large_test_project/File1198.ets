@Component
struct TestComponent1198 {
  @State message: string = "Hello from component 1198"

  aboutToAppear() {
    console.log("Component 1198 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
