@Component
struct TestComponent60 {
  @State message: string = "Hello from component 60"

  aboutToAppear() {
    console.log("Component 60 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
