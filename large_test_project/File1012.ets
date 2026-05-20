@Component
struct TestComponent1012 {
  @State message: string = "Hello from component 1012"

  aboutToAppear() {
    console.log("Component 1012 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
