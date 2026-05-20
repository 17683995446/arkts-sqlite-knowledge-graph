@Component
struct TestComponent1907 {
  @State message: string = "Hello from component 1907"

  aboutToAppear() {
    console.log("Component 1907 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
