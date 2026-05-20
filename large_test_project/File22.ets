@Component
struct TestComponent22 {
  @State message: string = "Hello from component 22"

  aboutToAppear() {
    console.log("Component 22 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
