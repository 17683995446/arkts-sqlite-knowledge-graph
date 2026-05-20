@Component
struct TestComponent777 {
  @State message: string = "Hello from component 777"

  aboutToAppear() {
    console.log("Component 777 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
