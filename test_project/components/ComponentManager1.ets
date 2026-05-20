
import { CustomerCard } from 'common/CustomerCard';
import { ProductModel } from 'models/ProductModel';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@Preview
@Component
export struct ComponentUtils323 {
  @State mList7: boolean = 'true';
  @State mData23: number = 98;
  @State mStatus8: string = 'value87';
  @State mAge30: number = 26;
  @State mStatus32: string = 'value60';

  build() {
        Flex() {
          TextInput('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Stack() {
          Button('Item 0')
        }
        Column() {
          Image('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Stack() {
          Text('Item 0')
          Button('Item 1')
        }
        Column() {
          Text('Item 0')
        }
  }

  onLoad11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
