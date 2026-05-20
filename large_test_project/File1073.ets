@Component
struct TestComponent1073 {
  @State message: string = "Hello from component 1073"

  aboutToAppear() {
    console.log("Component 1073 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
