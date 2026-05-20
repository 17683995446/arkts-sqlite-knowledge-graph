@Component
struct TestComponent543 {
  @State message: string = "Hello from component 543"

  aboutToAppear() {
    console.log("Component 543 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
