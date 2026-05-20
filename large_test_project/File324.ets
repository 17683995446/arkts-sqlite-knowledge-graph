@Component
struct TestComponent324 {
  @State message: string = "Hello from component 324"

  aboutToAppear() {
    console.log("Component 324 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
