@Component
struct TestComponent393 {
  @State message: string = "Hello from component 393"

  aboutToAppear() {
    console.log("Component 393 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
