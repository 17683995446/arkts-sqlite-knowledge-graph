@Component
struct TestComponent1007 {
  @State message: string = "Hello from component 1007"

  aboutToAppear() {
    console.log("Component 1007 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
