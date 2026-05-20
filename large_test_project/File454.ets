@Component
struct TestComponent454 {
  @State message: string = "Hello from component 454"

  aboutToAppear() {
    console.log("Component 454 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
