@Component
struct TestComponent19 {
  @State message: string = "Hello from component 19"

  aboutToAppear() {
    console.log("Component 19 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
