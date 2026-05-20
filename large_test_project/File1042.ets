@Component
struct TestComponent1042 {
  @State message: string = "Hello from component 1042"

  aboutToAppear() {
    console.log("Component 1042 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
