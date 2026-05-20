@Component
struct TestComponent502 {
  @State message: string = "Hello from component 502"

  aboutToAppear() {
    console.log("Component 502 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
