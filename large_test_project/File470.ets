@Component
struct TestComponent470 {
  @State message: string = "Hello from component 470"

  aboutToAppear() {
    console.log("Component 470 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
