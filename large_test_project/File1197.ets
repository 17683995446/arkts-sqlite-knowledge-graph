@Component
struct TestComponent1197 {
  @State message: string = "Hello from component 1197"

  aboutToAppear() {
    console.log("Component 1197 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
