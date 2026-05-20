@Component
struct TestComponent1868 {
  @State message: string = "Hello from component 1868"

  aboutToAppear() {
    console.log("Component 1868 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
