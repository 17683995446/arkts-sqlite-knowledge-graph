@Component
struct TestComponent1514 {
  @State message: string = "Hello from component 1514"

  aboutToAppear() {
    console.log("Component 1514 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
