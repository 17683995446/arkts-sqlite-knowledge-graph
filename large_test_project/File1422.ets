@Component
struct TestComponent1422 {
  @State message: string = "Hello from component 1422"

  aboutToAppear() {
    console.log("Component 1422 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
