@Component
struct TestComponent891 {
  @State message: string = "Hello from component 891"

  aboutToAppear() {
    console.log("Component 891 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
