@Component
struct TestComponent1233 {
  @State message: string = "Hello from component 1233"

  aboutToAppear() {
    console.log("Component 1233 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
