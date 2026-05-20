@Component
struct TestComponent1119 {
  @State message: string = "Hello from component 1119"

  aboutToAppear() {
    console.log("Component 1119 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
