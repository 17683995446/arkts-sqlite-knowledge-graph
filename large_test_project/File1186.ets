@Component
struct TestComponent1186 {
  @State message: string = "Hello from component 1186"

  aboutToAppear() {
    console.log("Component 1186 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
