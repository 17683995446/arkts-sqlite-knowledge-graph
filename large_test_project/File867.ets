@Component
struct TestComponent867 {
  @State message: string = "Hello from component 867"

  aboutToAppear() {
    console.log("Component 867 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
