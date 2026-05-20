@Component
struct TestComponent1584 {
  @State message: string = "Hello from component 1584"

  aboutToAppear() {
    console.log("Component 1584 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
