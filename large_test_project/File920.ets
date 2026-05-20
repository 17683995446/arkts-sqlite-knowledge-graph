@Component
struct TestComponent920 {
  @State message: string = "Hello from component 920"

  aboutToAppear() {
    console.log("Component 920 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
