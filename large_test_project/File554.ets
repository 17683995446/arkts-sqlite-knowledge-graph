@Component
struct TestComponent554 {
  @State message: string = "Hello from component 554"

  aboutToAppear() {
    console.log("Component 554 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
