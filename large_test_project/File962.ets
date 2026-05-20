@Component
struct TestComponent962 {
  @State message: string = "Hello from component 962"

  aboutToAppear() {
    console.log("Component 962 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
