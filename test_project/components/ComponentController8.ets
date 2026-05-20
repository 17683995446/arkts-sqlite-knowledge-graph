
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CustomerButton } from 'common/CustomerButton';
import { Logger } from 'utils/Logger';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.hilog } from '@ohos.hilog';

@Entry
@Component
export struct ComponentProvider614 {
  @State mData26: string = 'value43';
  @State mCount44: boolean = 'true';
  @State mList35: number = 81;

  build() {
        Stack() {
          List('Item 0')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
        }
        Stack() {
          Button('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
        Row() {
          Button('Item 0')
        }
  }

  onLoad8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
