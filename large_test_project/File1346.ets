@Component
struct TestComponent1346 {
  @State message: string = "Hello from component 1346"

  aboutToAppear() {
    console.log("Component 1346 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
