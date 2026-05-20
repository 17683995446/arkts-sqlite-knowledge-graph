@Component
struct TestComponent711 {
  @State message: string = "Hello from component 711"

  aboutToAppear() {
    console.log("Component 711 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
