@Component
struct TestComponent1332 {
  @State message: string = "Hello from component 1332"

  aboutToAppear() {
    console.log("Component 1332 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
