@Component
struct TestComponent1454 {
  @State message: string = "Hello from component 1454"

  aboutToAppear() {
    console.log("Component 1454 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
