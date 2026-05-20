@Component
struct TestComponent1936 {
  @State message: string = "Hello from component 1936"

  aboutToAppear() {
    console.log("Component 1936 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
