@Component
struct TestComponent731 {
  @State message: string = "Hello from component 731"

  aboutToAppear() {
    console.log("Component 731 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
