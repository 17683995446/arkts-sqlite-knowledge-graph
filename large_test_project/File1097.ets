@Component
struct TestComponent1097 {
  @State message: string = "Hello from component 1097"

  aboutToAppear() {
    console.log("Component 1097 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
