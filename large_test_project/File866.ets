@Component
struct TestComponent866 {
  @State message: string = "Hello from component 866"

  aboutToAppear() {
    console.log("Component 866 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
