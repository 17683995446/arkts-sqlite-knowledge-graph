@Component
struct TestComponent225 {
  @State message: string = "Hello from component 225"

  aboutToAppear() {
    console.log("Component 225 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
