@Component
struct TestComponent1878 {
  @State message: string = "Hello from component 1878"

  aboutToAppear() {
    console.log("Component 1878 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
