@Component
struct TestComponent1170 {
  @State message: string = "Hello from component 1170"

  aboutToAppear() {
    console.log("Component 1170 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
