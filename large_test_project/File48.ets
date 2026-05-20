@Component
struct TestComponent48 {
  @State message: string = "Hello from component 48"

  aboutToAppear() {
    console.log("Component 48 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
