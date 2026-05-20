@Component
struct TestComponent1112 {
  @State message: string = "Hello from component 1112"

  aboutToAppear() {
    console.log("Component 1112 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
