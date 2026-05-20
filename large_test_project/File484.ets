@Component
struct TestComponent484 {
  @State message: string = "Hello from component 484"

  aboutToAppear() {
    console.log("Component 484 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
