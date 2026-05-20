@Component
struct TestComponent1673 {
  @State message: string = "Hello from component 1673"

  aboutToAppear() {
    console.log("Component 1673 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
