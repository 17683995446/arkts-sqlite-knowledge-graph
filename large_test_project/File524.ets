@Component
struct TestComponent524 {
  @State message: string = "Hello from component 524"

  aboutToAppear() {
    console.log("Component 524 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
