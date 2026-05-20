@Component
struct TestComponent1288 {
  @State message: string = "Hello from component 1288"

  aboutToAppear() {
    console.log("Component 1288 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
