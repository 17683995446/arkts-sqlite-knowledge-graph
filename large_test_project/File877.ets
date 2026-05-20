@Component
struct TestComponent877 {
  @State message: string = "Hello from component 877"

  aboutToAppear() {
    console.log("Component 877 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
