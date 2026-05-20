@Component
struct TestComponent1267 {
  @State message: string = "Hello from component 1267"

  aboutToAppear() {
    console.log("Component 1267 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
