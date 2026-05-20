@Component
struct TestComponent818 {
  @State message: string = "Hello from component 818"

  aboutToAppear() {
    console.log("Component 818 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
