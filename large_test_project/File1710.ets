@Component
struct TestComponent1710 {
  @State message: string = "Hello from component 1710"

  aboutToAppear() {
    console.log("Component 1710 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
