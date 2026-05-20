@Component
struct TestComponent631 {
  @State message: string = "Hello from component 631"

  aboutToAppear() {
    console.log("Component 631 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
