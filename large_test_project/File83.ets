@Component
struct TestComponent83 {
  @State message: string = "Hello from component 83"

  aboutToAppear() {
    console.log("Component 83 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
