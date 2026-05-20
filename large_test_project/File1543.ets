@Component
struct TestComponent1543 {
  @State message: string = "Hello from component 1543"

  aboutToAppear() {
    console.log("Component 1543 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
