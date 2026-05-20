@Component
struct TestComponent915 {
  @State message: string = "Hello from component 915"

  aboutToAppear() {
    console.log("Component 915 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
