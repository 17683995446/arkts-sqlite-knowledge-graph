@Component
struct TestComponent1227 {
  @State message: string = "Hello from component 1227"

  aboutToAppear() {
    console.log("Component 1227 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
