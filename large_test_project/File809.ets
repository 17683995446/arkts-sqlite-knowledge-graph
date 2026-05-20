@Component
struct TestComponent809 {
  @State message: string = "Hello from component 809"

  aboutToAppear() {
    console.log("Component 809 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
