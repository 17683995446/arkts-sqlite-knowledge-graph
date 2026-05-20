@Component
struct TestComponent233 {
  @State message: string = "Hello from component 233"

  aboutToAppear() {
    console.log("Component 233 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
