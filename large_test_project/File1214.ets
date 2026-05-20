@Component
struct TestComponent1214 {
  @State message: string = "Hello from component 1214"

  aboutToAppear() {
    console.log("Component 1214 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
