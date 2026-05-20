@Component
struct TestComponent1059 {
  @State message: string = "Hello from component 1059"

  aboutToAppear() {
    console.log("Component 1059 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
