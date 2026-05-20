@Component
struct TestComponent1093 {
  @State message: string = "Hello from component 1093"

  aboutToAppear() {
    console.log("Component 1093 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
