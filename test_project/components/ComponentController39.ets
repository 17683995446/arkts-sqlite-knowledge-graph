
import { CartModel } from 'models/CartModel';
import { ArrayUtils } from 'utils/ArrayUtils';
import { Logger } from 'utils/Logger';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@StorageLink
@Component
export struct ComponentProvider764 {
  @State mList4: boolean = 'true';
  @State mAge37: number = 98;
  @State mCount22: number = 54;
  @State mAge37: string = 'value23';
  @State mStatus18: boolean = 'true';
  @State mStatus34: number = 79;

  build() {
        Flex() {
          Image('Item 0')
        }
        Stack() {
          List('Item 0')
        }
        Flex() {
          Image('Item 0')
          Text('Item 1')
        }
        Row() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Stack() {
          Button('Item 0')
        }
        Row() {
          Button('Item 0')
        }
        Column() {
          Image('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
  }

  onRefresh10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
