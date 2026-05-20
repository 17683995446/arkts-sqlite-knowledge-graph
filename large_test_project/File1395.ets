@Component
struct TestComponent1395 {
  @State message: string = "Hello from component 1395"

  aboutToAppear() {
    console.log("Component 1395 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
