@Component
struct TestComponent884 {
  @State message: string = "Hello from component 884"

  aboutToAppear() {
    console.log("Component 884 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
