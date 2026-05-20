@Component
struct TestComponent430 {
  @State message: string = "Hello from component 430"

  aboutToAppear() {
    console.log("Component 430 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
