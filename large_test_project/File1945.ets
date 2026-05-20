@Component
struct TestComponent1945 {
  @State message: string = "Hello from component 1945"

  aboutToAppear() {
    console.log("Component 1945 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
