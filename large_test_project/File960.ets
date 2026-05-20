@Component
struct TestComponent960 {
  @State message: string = "Hello from component 960"

  aboutToAppear() {
    console.log("Component 960 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
