@Component
struct TestComponent651 {
  @State message: string = "Hello from component 651"

  aboutToAppear() {
    console.log("Component 651 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
