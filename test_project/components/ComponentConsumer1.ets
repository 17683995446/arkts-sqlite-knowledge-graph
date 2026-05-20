
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Prop
@Component
export struct ComponentHandler897 {
  @State mList4: number = 5;
  @State mAge12: number = 70;
  @State mData39: number = 0;

  build() {
        Stack() {
          Button('Item 0')
        }
        Row() {
          Text('Item 0')
          Image('Item 1')
        }
        Flex() {
          Button('Item 0')
          Image('Item 1')
        }
        Flex() {
          Image('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Flex() {
          Button('Item 0')
        }
        Row() {
          Image('Item 0')
          Text('Item 1')
        }
        Stack() {
          Button('Item 0')
        }
  }

  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
