@Component
struct TestComponent244 {
  @State message: string = "Hello from component 244"

  aboutToAppear() {
    console.log("Component 244 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
