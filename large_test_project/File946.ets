@Component
struct TestComponent946 {
  @State message: string = "Hello from component 946"

  aboutToAppear() {
    console.log("Component 946 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
