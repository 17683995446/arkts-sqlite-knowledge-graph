@Component
struct TestComponent880 {
  @State message: string = "Hello from component 880"

  aboutToAppear() {
    console.log("Component 880 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
