@Entry
@Component
struct UnicodeTest {{
  @State text: string = 'Chinese Test';
  
  build() {{
    Text(this.text)
  }}
}}
