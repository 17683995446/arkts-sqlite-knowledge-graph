
import { ValidateUtils } from 'utils/ValidateUtils';
import { Logger } from 'utils/Logger';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.router } from '@ohos.router';

@Preview
@Component
export struct ComponentWidget880 {
  @State mStatus7: UserModel[] = 39;
  @State mCount46: UserModel[] = 0;
  @State mData46: UserModel[] = 22;
  @State mStatus26: boolean = 'true';
  @State mAge41: UserModel[] = 30;

  build() {
        Column() {
          Text('Item 0')
          List('Item 1')
        }
        Column() {
          Text('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Column() {
          List('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Flex() {
          Button('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
  }

  onInit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
