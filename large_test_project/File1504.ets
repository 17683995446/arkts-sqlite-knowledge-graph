@Component
struct TestComponent1504 {
  @State message: string = "Hello from component 1504"

  aboutToAppear() {
    console.log("Component 1504 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
