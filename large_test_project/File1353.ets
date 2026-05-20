@Component
struct TestComponent1353 {
  @State message: string = "Hello from component 1353"

  aboutToAppear() {
    console.log("Component 1353 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
