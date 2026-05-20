@Component
struct TestComponent535 {
  @State message: string = "Hello from component 535"

  aboutToAppear() {
    console.log("Component 535 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
