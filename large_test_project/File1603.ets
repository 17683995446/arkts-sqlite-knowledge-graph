@Component
struct TestComponent1603 {
  @State message: string = "Hello from component 1603"

  aboutToAppear() {
    console.log("Component 1603 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
