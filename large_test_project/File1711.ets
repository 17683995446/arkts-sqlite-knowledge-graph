@Component
struct TestComponent1711 {
  @State message: string = "Hello from component 1711"

  aboutToAppear() {
    console.log("Component 1711 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
