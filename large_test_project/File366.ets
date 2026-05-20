@Component
struct TestComponent366 {
  @State message: string = "Hello from component 366"

  aboutToAppear() {
    console.log("Component 366 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
