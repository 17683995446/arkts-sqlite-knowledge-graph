@Component
struct TestComponent826 {
  @State message: string = "Hello from component 826"

  aboutToAppear() {
    console.log("Component 826 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
