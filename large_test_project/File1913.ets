@Component
struct TestComponent1913 {
  @State message: string = "Hello from component 1913"

  aboutToAppear() {
    console.log("Component 1913 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
