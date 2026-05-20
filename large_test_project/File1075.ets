@Component
struct TestComponent1075 {
  @State message: string = "Hello from component 1075"

  aboutToAppear() {
    console.log("Component 1075 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
