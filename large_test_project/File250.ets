@Component
struct TestComponent250 {
  @State message: string = "Hello from component 250"

  aboutToAppear() {
    console.log("Component 250 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
