@Component
struct TestComponent1981 {
  @State message: string = "Hello from component 1981"

  aboutToAppear() {
    console.log("Component 1981 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
