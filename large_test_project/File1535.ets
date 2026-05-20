@Component
struct TestComponent1535 {
  @State message: string = "Hello from component 1535"

  aboutToAppear() {
    console.log("Component 1535 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
