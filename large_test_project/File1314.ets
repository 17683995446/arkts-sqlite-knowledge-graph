@Component
struct TestComponent1314 {
  @State message: string = "Hello from component 1314"

  aboutToAppear() {
    console.log("Component 1314 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
