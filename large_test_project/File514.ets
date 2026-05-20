@Component
struct TestComponent514 {
  @State message: string = "Hello from component 514"

  aboutToAppear() {
    console.log("Component 514 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
