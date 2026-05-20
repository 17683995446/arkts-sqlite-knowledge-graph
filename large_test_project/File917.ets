@Component
struct TestComponent917 {
  @State message: string = "Hello from component 917"

  aboutToAppear() {
    console.log("Component 917 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
