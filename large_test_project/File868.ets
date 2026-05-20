@Component
struct TestComponent868 {
  @State message: string = "Hello from component 868"

  aboutToAppear() {
    console.log("Component 868 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
