@Component
struct TestComponent941 {
  @State message: string = "Hello from component 941"

  aboutToAppear() {
    console.log("Component 941 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
