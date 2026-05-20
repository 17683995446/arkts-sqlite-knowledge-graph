@Component
struct TestComponent1841 {
  @State message: string = "Hello from component 1841"

  aboutToAppear() {
    console.log("Component 1841 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
