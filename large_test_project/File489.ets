@Component
struct TestComponent489 {
  @State message: string = "Hello from component 489"

  aboutToAppear() {
    console.log("Component 489 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
