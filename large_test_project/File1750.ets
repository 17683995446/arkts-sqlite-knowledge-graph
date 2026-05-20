@Component
struct TestComponent1750 {
  @State message: string = "Hello from component 1750"

  aboutToAppear() {
    console.log("Component 1750 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
