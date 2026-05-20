@Component
struct TestComponent1446 {
  @State message: string = "Hello from component 1446"

  aboutToAppear() {
    console.log("Component 1446 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
