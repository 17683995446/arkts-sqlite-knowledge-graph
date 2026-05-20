@Component
struct TestComponent865 {
  @State message: string = "Hello from component 865"

  aboutToAppear() {
    console.log("Component 865 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
