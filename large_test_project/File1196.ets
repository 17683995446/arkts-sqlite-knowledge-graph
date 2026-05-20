@Component
struct TestComponent1196 {
  @State message: string = "Hello from component 1196"

  aboutToAppear() {
    console.log("Component 1196 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
