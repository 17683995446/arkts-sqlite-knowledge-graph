@Component
struct TestComponent1155 {
  @State message: string = "Hello from component 1155"

  aboutToAppear() {
    console.log("Component 1155 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
