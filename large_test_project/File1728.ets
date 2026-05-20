@Component
struct TestComponent1728 {
  @State message: string = "Hello from component 1728"

  aboutToAppear() {
    console.log("Component 1728 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
