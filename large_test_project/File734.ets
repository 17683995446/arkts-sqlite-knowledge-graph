@Component
struct TestComponent734 {
  @State message: string = "Hello from component 734"

  aboutToAppear() {
    console.log("Component 734 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
