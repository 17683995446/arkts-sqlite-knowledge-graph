@Component
struct TestComponent541 {
  @State message: string = "Hello from component 541"

  aboutToAppear() {
    console.log("Component 541 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
