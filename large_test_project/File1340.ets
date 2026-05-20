@Component
struct TestComponent1340 {
  @State message: string = "Hello from component 1340"

  aboutToAppear() {
    console.log("Component 1340 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
