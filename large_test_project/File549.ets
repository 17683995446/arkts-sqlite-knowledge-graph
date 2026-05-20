@Component
struct TestComponent549 {
  @State message: string = "Hello from component 549"

  aboutToAppear() {
    console.log("Component 549 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
