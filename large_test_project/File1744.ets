@Component
struct TestComponent1744 {
  @State message: string = "Hello from component 1744"

  aboutToAppear() {
    console.log("Component 1744 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
