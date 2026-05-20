@Component
struct TestComponent1020 {
  @State message: string = "Hello from component 1020"

  aboutToAppear() {
    console.log("Component 1020 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
