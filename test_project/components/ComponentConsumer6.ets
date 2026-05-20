
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.hilog } from '@ohos.hilog';
import { CustomerButton } from 'common/CustomerButton';

@Observed
@Component
export struct ComponentService80 {
  @State mStatus48: string = 'value42';
  @State mCount16: number = 90;
  @State mStatus24: UserModel[] = 98;
  @State mAge31: number = 87;
  @State mStatus9: UserModel[] = 67;

  build() {
        Stack() {
          Button('Item 0')
          Button('Item 1')
        }
        Column() {
          Image('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Flex() {
          Button('Item 0')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
        }
        Stack() {
          List('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Column() {
          Button('Item 0')
          List('Item 1')
        }
  }

  onChange19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
