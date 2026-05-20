@Component
struct TestComponent772 {
  @State message: string = "Hello from component 772"

  aboutToAppear() {
    console.log("Component 772 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
