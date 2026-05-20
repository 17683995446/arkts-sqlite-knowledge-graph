@Component
struct TestComponent1010 {
  @State message: string = "Hello from component 1010"

  aboutToAppear() {
    console.log("Component 1010 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
