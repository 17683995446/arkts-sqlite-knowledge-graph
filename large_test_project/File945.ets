@Component
struct TestComponent945 {
  @State message: string = "Hello from component 945"

  aboutToAppear() {
    console.log("Component 945 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
