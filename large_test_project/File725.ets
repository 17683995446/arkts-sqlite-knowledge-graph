@Component
struct TestComponent725 {
  @State message: string = "Hello from component 725"

  aboutToAppear() {
    console.log("Component 725 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
