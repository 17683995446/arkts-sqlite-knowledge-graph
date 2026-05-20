@Component
struct TestComponent1161 {
  @State message: string = "Hello from component 1161"

  aboutToAppear() {
    console.log("Component 1161 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
