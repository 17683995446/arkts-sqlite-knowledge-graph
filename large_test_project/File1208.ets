@Component
struct TestComponent1208 {
  @State message: string = "Hello from component 1208"

  aboutToAppear() {
    console.log("Component 1208 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
