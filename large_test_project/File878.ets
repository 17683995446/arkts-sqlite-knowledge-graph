@Component
struct TestComponent878 {
  @State message: string = "Hello from component 878"

  aboutToAppear() {
    console.log("Component 878 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
