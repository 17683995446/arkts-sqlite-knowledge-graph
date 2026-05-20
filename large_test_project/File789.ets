@Component
struct TestComponent789 {
  @State message: string = "Hello from component 789"

  aboutToAppear() {
    console.log("Component 789 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
